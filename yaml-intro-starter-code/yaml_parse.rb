require "yaml"

class YamlExample
  attr_accessor :user_credentials, :environments, :lists

  def initialize
    @user_credentials = YAML.load_file("user_credentials.yml")
    @environments = YAML.load_file("environments.yml")
    @list= YAML.load_file("list.yml")
  end
end

yaml = YamlExample.new

puts yaml.user_credentials
