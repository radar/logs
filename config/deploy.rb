set :application, 'logs'
set :repo_url, 'git://github.com/radar/logs'
set :deploy_to, '/var/www/logs'
set :bundle_flags, '--deployment'
set :linked_files, %w{config/database.yml}

set :rbenv_type, :system # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.1.0'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"

set :rbenv_map_bins, %w{rake gem bundle ruby rails}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :finishing, 'deploy:cleanup'

end
