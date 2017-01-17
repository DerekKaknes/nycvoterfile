source 'http://rubygems.org'

gem 'sinatra', :require => 'sinatra/base'
gem 'activerecord', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem "pg"
gem 'bcrypt'
gem "tux"
gem 'dotenv', :require => 'dotenv/load'
gem 'json'

group :development do
  gem 'pry'
  gem 'thin'
  gem 'shotgun'
  gem 'sqlite3'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end
