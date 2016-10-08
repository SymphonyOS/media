#!/usr/bin/env ruby
require 'sinatra'
require 'mysql'
require '~/settings.rb'

Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do
  erb :index
end

get '/v/:vid' do
  @vid = params[:vid]
  @db = Mysql.new('localhost', 'media', @db_pass, @db_user)
  erb :media
end