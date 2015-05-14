set :rails_env, "production"
set :unicorn_rack_env, "production"
set :pty, false
set :sidekiq_role, :batch

role :app, %w{vagrant@192.168.33.40}
role :web, %w{vagrant@192.168.33.40}
role :db,  %w{vagrant@192.168.33.40}
role :batch,  %w{vagrant@192.168.33.41}


server '192.168.33.40', user: 'vagrant', roles: %w{web app}
server '192.168.33.41', user: 'vagrant', roles: %w{batch}

set :ssh_options, {
  keys: %w(/home/vagrant/.ssh/id_rsa),
  forward_agent: false,
  auth_methods: %w(publickey)
}
