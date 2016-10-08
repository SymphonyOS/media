#!/usr/bin/env ruby
require 'sinatra'
require 'mysql'

Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do
  erb :index
end

get '/v/:vid' do
  @vid = params[:vid]
  erb :media
end