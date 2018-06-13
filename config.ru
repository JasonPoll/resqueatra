require './resque-example-app.rb'
require 'resque/server'
require 'dotenv'
Dotenv.load

run Rack::URLMap.new \
  "/"       => Sinatra::Application,
  "/resque" => Resque::Server.new
