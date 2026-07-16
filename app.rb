# frozen_string_literal: true

require "bundler/setup"
require "sinatra/base"
require "logger"

# require "sequel"
# DB ||= Sequel.connect(ENV["DATABASE_URL"])

# require "redis"
# REDIS ||= Redis.new(url: ENV["REDIS_URL"])

class AppName < Sinatra::Base
  set :logging, Logger::DEBUG if development?

  before do
    logger.debug(request.request_method) { "path: #{request.path_info}, params: #{params}" }

    @title = "AppName"
  end

  get "/" do
    @title = "Hello World!"
    erb :index
  end

  get "/ping" do
    halt :ok
  end

  not_found do
    @title = "AppName | 404"
    erb :not_found
  end
end
