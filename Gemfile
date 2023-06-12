# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', '>= 12.0'
gem 'sinatra', '~> 3.0'

# Use database
# gem 'sequel', '~> 5.30'
# gem 'mysql2', '~> 0.5'
# gem 'pg', '~> 1.2'
# gem 'sqlite3', '~> 1.4'

# Use redis
# gem 'redis', '~> 5.0'

group :production do
  gem 'unicorn', '~> 6.0'
  gem 'whenever', '~> 1.0', require: false
end

group :development, :test do
  gem 'dotenv', '~> 2.8'
  gem 'rubocop', '~> 1.19'
  gem 'thin', '~> 1.8'
end

group :test do
  gem 'rack-test', '~> 2.0'
  gem 'rspec', '~> 3.10'
  gem 'simplecov', '~> 0.22.0'
end

group :development do
  gem 'pry', '~> 0.14'
  gem 'rerun', '~> 0.14'
end
