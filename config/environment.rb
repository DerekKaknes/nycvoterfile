require 'yaml'
require 'erb'

@environment = ENV['SINATRA_ENV'] ||= "development"
@dbconfig = YAML.load_file('config/database.yml')

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  @dbconfig[@environment]
)

require_all 'app'
