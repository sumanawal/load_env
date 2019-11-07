require 'dotenv'
require 'pathname'
require 'generator'
module LoadEnv
  class Loader
    def self.load
      base_dir = Pathname.new('config')
      env_var_dir = base_dir.join('.env_vars')
      env_secrets = File.join(env_var_dir, "#{ENV['RAILS_ENV']} || #{ENV['RACK_ENV']} || 'development'")
      Dotenv.load(env_secrets)
    end
  end
end