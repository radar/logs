set :application, 'logs'
set :repo_url, 'git://github.com/radar/logs'
set :deploy_to, '/var/www/logs'
set :bundle_flags, '--deployment'
set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/backup tmp/pids tmp/cache}

set :chruby_ruby, 'ruby-2.2.3'

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :finishing, 'deploy:cleanup'

end
