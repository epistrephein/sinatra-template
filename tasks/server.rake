# frozen_string_literal: true

desc 'Start server in development environment'
task :server do
  exec 'bundle exec foreman start -e .env.dev -f Procfile.dev'
end
