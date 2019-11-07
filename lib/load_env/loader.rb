require 'dotenv'
require 'pathname'
require 'generator'
module LoadEnv
  class Loader
    def self.load
      base_dir = Pathname.new('config')
      env_var_dir = base_dir.join('.env_vars')
      mkdir_p env_var_dir
      EnvLoader::Generator.new(env_var_dir).generate
      env_secrets = File.join(env_var_dir, "#{ENV['RAILS_ENV']} || #{ENV['RACK_ENV']} || 'development'")
      Dotenv.load(env_secrets)
    end
  end
end