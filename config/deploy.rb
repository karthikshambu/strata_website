# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'fm_website'
set :repo_url, 'git@github.com:karthikshambu/firstmyle_website.git'
set :rbenv_ruby, '2.1.2'
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/rails/apps/fm_website'

# Default value for :scm is :git
set :scm, :git

set :default_env, { path:
"/rails/common/ruby-2.1.2/bin:.rvm/bin:$PATH"

}

set :user, 'mintthehole'

set :ssh_options, {
  keys: [File.join(ENV["HOME"], ".ssh", "id_rsa")],
  forward_agent: true,
  auth_methods: %w(publickey)
}

set :linked_files, fetch(:linked_files, []).push('config/database.yml')

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
