# frozen_string_literal: true

source 'https://rubygems.org'

gem 'irb', '~> 1.14'
gem 'rake', '~> 13.0'
gem 'sinatra', '~> 4.0'

# Databases
# gem 'sequel', '~> 5.85'
# gem 'mysql2', '~> 0.5'
# gem 'pg', '~> 1.5'
# gem 'sqlite3', '~> 2.1'
# gem 'redis', '~> 5.3'

group :production do
  gem 'unicorn', '~> 6.1'
  gem 'whenever', '~> 1.0', require: false
end

group :development, :test do
  gem 'dotenv', '~> 3.1'
  gem 'rackup', '~> 2.1'
  gem 'rubocop', '~> 1.65'
end

group :test do
  gem 'rack-test', '~> 2.0'
  gem 'rspec', '~> 3.10'
  gem 'simplecov', '~> 0.22.0'
end

group :development do
  gem 'rerun', '~> 0.14'
end
