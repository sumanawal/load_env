require 'pathname'

desc 'Install Env Loader'
task :install do
  envs = %w(production development)
  base_dir = ENV["BASE_DIR"] || Pathname.new('config/vars')
  mkdir_p base_dir
  LoadEnv::Generator.new(base_dir).generate
end
