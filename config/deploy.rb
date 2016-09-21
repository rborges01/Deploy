# config valid only for current version of Capistrano
require 'capistrano/ext/multistage' 

set :stages, %w(dev, production)
set :default_stage, "dev" 

set :application, 'Teste'
set :user, 'renato'

# setup repo details
set :scm, :git
set :repository, 'git@github.com:rborges01/Deploy.git'
set :deploy_to, "/home/renato/projeto/teste/Deploy" 

# how many old releases do we want to keep
set :keep_releases, 2

namespace :deploy do
  after :finishing, 'deploy:cleanup'
end
