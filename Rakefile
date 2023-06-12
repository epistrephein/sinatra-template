# frozen_string_literal: true

require 'bundler/setup'

begin
  require 'dotenv/load'
rescue LoadError
  nil
end

Rake.add_rakelib 'tasks/**'

task default: 'server'
