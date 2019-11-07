require "load_env/version"

module LoadEnv
  class Error < StandardError; end
  # Your code goes here...
end
require "load_env/loader"
LoadEnv::Loader.load