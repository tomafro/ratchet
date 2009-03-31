role :app, 'ratchet.tomafro.net'
role :db, 'ratchet.tomafro.net', :primary => true

default_run_options[:pty] = true
set :repository,  "git@github.com:tomafro/ratchet.git"
set :scm, "git"

ssh_options[:forward_agent] = true

set :branch, "master"
set :deploy_via, :remote_cache
set :git_enable_submodules, 1

set :application, "ratchet"
set :deploy_to, "/var/rails/#{application}"

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end
