# frozen_string_literal: true

require "bundler/setup"

require "rack/test"
require "simplecov"
SimpleCov.start

require_relative "../app"

ENV["RACK_ENV"] = "test"

RSpec.configure do |config|
  # Make Rack::Test available to all spec contexts
  config.include Rack::Test::Methods

  # Turn on all Ruby warnings
  config.warnings = :all

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Enable temporarily focused examples and groups
  config.filter_run_when_matching :focus

  # Use the documentation formatter for detailed output
  config.default_formatter = "doc"

  # Run specs in random order to surface order dependencies
  config.order = :random

  # Seed Ruby's global RNG with RSpec's seed for reproducibility
  Kernel.srand config.seed

  # Load Sinatra app for Rack testing
  def app
    AppName
  end
end
