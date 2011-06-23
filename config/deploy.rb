require "bundler/capistrano" # runs bundle:install automatically
require './config/boot'
require 'hoptoad_notifier/capistrano'

set :application, "swapto"

set :scm, :git
set :scm_verbose, true
set :repository,  "git@github.com:tnitsche/swapto.git"
set :branch, "master"
set :repository_cache, "git_master"
set :deploy_via, :remote_cache
set :deploy_to, "/var/www/roots/swapto"

set :use_sudo, false
set :ssh_options, { :forward_agent => true }
 
role :app, "swap.to"
role :web, "swap.to"
role :db,  "swap.to", :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

