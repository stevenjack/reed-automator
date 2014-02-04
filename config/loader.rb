require 'yaml'

class Loader
  def self.load(path)
    config_file = File.join(path)
    if File.exists? config_file
      YAML.load(File.read(config_file))
    end
  end
end
