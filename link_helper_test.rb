require 'sinatra'
require './sinatra/link_helper'

get '/' do
    erb :link_helper
end
