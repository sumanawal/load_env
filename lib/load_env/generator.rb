module LoadEnv
  class Generator
    def initialize(env_path)
      @env_path = env_path
    end

    def generate
      env_files = %w(development production)
      env_files.each do |file_name|
        full_path = env_files.join(file_name)
        if File.exists? full_path
          warn '[skip] #{file_name} already exists'
        else
          File.open(full_path, 'w+') do |f|
            f.write(env_file_template)
          end
        end
      end
    end

    private

    def env_file_template
      '
        Please export your environment variables in following format \n
        # export BASE_URL="someurl"
      '
    end
  end
end