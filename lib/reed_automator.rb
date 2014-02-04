require 'thor'
require './config/loader'

class ReedAutomator < Thor
  package_name "ReedAutomator"
  map "-L" => :list

  def initialize(*args)
    super
    @config = Loader::load('config.yaml')
  end

  desc "latest", "List status of latest timesheet"
  def latest
    puts 'Show latest timestamp'
  end

end
