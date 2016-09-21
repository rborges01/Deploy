# config valid only for current version of Capistrano


lock '3.6.1'
set :application, 'teste'
set :user, 'renato.nascimento'
set :password, 'P@assw0rd01'
set :domain, '10.2.45.83'
set :mongrel_port, '22'
set :mongrel_nodes, "4"
set :rails_env,     "teste"
set :server_hostname, 'puppetclient'
set :git_account, 'renato01'
set :scm_passphrase,  Proc.new { Capistrano::CLI.password_prompt('P@assw0rd01') }
role :web, '10.2.45.83'
role :app, '10.2.45.83'
role :db, '10.2.45.83', :primary => true
default_run_options[:pty] = true
set :repository,  "git@github.com:rborges01/Deploy.git"
set :scm, "git"
set :user, user
ssh_options[:forward_agent] = true
set :branch, "master"
set :deploy_via, :checkout
set :git_shallow_clone, 1
set :git_enable_submodules, 1
set :use_sudo, false
set :deploy_to, "/tmp
