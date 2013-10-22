require 'bundler/capistrano'
load 'deploy/assets'

set :application, "logs"
set :repository,  "git://github.com/radar/logs"

set :scm, :git

role :web, "logs.ryanbigg.com"
role :app, "logs.ryanbigg.com"
role :db,  "logs.ryanbigg.com", :primary => true

set :user, "radar"
set :deploy_to, "/var/www/logs"

set :use_sudo, false

after "deploy:restart", "deploy:cleanup"

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

task :symlink_database_yml do
  run "rm #{release_path}/config/database.yml"
  run "ln -sfn #{shared_path}/config/database.yml 
       #{release_path}/config/database.yml"
end
after "bundle:install", "symlink_database_yml"

