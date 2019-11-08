require "load_env/version"
require 'load_env/railtie' if defined?(Rails)
require "load_env/loader"
module LoadEnv
  class Error < StandardError; end
  # Your code goes here...
  LoadEnv::Loader.load
end

