# frozen_string_literal: true

job_type :rake, 'cd :path && ' \
                ':environment_variable=:environment ' \
                ':database_variable=:database_url ' \
                ':bundle_command rake :task :output'

set :chronic_options,      hours24: true
set :output,               'log/rake.log'

set :environment_variable, 'RACK_ENV'
set :environment,          'production'

set :database_variable,    'REDIS_URL'
set :database_url,         'redis://localhost:6379/0'

every 1.hour do
  # rake 'do:something', output: 'log/something.log'
end
