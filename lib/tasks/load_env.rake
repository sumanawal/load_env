require 'pathname'

namespace :load_env do
  desc 'Install Env Loader'
  task :install do
    envs = %w(production development)
    base_dir = ENV["BASE_DIR"] || Pathname.new('config/.env_vars')
    mkdir_p base_dir
    env_files = %w(development production)
    env_files.each do |file_name|
      full_path = base_dir.join(file_name)
      if File.exists? full_path
        warn "[skip] #{full_path} already exists"
      else
        File.open(full_path, 'w+') do |f|
          f.write('
# Please export your environment variables in following format \n
# export BASE_URL="someurl"
        ')
        end
      end
    end
  end
end
