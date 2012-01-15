require 'capistrano/ext/multistage'
require 'bundler/capistrano'

set :application, "ITM API"
set :repository,  "git@github.com:cfaivre/itm-api"

set :scm, :git

set :user, "itmapi"
set :port, 22
set :deploy_to, "/srv/www/itm-api.de"
set :use_sudo, false
set :keep_releases, 5
set :bundle_flags, "--deployment --quiet --binstubs"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
