# frozen_string_literal: true

set :bundle_command,       '/usr/local/bin/bundle exec'
set :chronic_options,      hours24: true
set :output,               'log/rake.log'

# set :environment_variable, 'REDIS_URL'
# set :environment,          'redis://localhost:6379/0'

# set :environment_variable, 'DATABASE_URL'
# set :environment,          'sqlite://db/sinatra.db'

every 1.hour do
  # rake 'do:something'
end
