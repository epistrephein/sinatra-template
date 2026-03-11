# frozen_string_literal: true

source "https://rubygems.org"

gem "irb", "~> 1.17"
gem "puma", "~> 7.2"
gem "rake", "~> 13.0"
gem "sinatra", "~> 4.2"

# Databases
# gem "sequel", "~> 5.102"
# gem "mysql2", "~> 0.5"
# gem "pg", "~> 1.6"
# gem "sqlite3", "~> 2.9"
# gem "redis", "~> 5.4"

group :production do
  gem "whenever", "~> 1.1", require: false
end

group :development, :test do
  gem "dotenv", "~> 3.2"
  gem "rackup", "~> 2.3"
  gem "rubocop", "~> 1.85"
end

group :test do
  gem "rack-test", "~> 2.2"
  gem "rspec", "~> 3.13"
  gem "simplecov", "~> 0.22.0"
end
