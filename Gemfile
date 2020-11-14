# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', '>= 12.0'
gem 'sass', '~> 3.7'
gem 'sinatra', '~> 2.1'

# Use database
# gem 'sequel', '~> 5.30'
# gem 'mysql2', '~> 0.5'
# gem 'pg', '~> 1.2'
# gem 'sqlite3', '~> 1.4'

# Use redis
# gem 'redis', '~> 4.2'

group :production do
  gem 'unicorn', '~> 5.7'
  gem 'whenever', '~> 1.0', require: false
end

group :development, :test do
  gem 'thin', '~> 1.8'
end

group :test do
  gem 'rack-test', '~> 1.1'
  gem 'rspec', '~> 3.10'
  gem 'simplecov', '~> 0.17.1'
end

group :development do
  gem 'foreman'
  gem 'pry-byebug'
  gem 'rerun', '~> 0.13'
  gem 'rubocop', '~> 0.81.0'
end
