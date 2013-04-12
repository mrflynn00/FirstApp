require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index   
end

get '/name' do
  if params[:name].downcase == "collin"
    redirect 'http://www.youtube.com/watch?v=oHg5SJYRHA0'
  else
    erb :name
  end
end
