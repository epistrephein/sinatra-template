# frozen_string_literal: true

require 'bundler/setup'
require 'sinatra/base'
require 'logger'

# require 'sequel'
# DB ||= Sequel.connect(ENV['DATABASE_URL'])

# require 'redis'
# REDIS ||= Redis.new(url: ENV['REDIS_URL'])

# require_relative 'helpers/init'
# require_relative 'models/init'
# require_relative 'routes/init'

class AppName < Sinatra::Base
  configure :development do
    set :logging, Logger::DEBUG
  end

  configure :production do
    set :logging,         true
    set :raise_errors,    false
    set :show_exceptions, false
  end

  set :app_file,      __FILE__
  set :root,          File.dirname(settings.app_file)
  set :public_folder, File.join(settings.root, 'public')

  before do
    logger.debug(request.request_method) { "path: #{request.path_info}, params: #{params}" }

    @title = 'Sinatra'
  end

  get '/' do
    @title = 'Hello World!'
    erb :index
  end

  get '/ping' do
    halt :ok
  end

  # Errors
  not_found do
    @title = 'Sinatra | 404'
    erb :not_found
  end

  error do
    @title = 'Sinatra | Error'
    erb :error
  end
end
