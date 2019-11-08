class LoadEnv::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/load_env.rake'
  end
end