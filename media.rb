#!/usr/bin/env ruby
require 'sinatra'
require 'mysql'

Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do
  erb :index
end