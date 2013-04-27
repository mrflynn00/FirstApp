require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :newindex
end

get '/logins' do
  @username = params[:username]
  @password = params[:password]
  if @username == 'mrflynn00'
    if @password == 'derp'
      redirect "/name?name=jpoz&state=Oregon"
    else
      @error = "Wrong Password"
      erb :newindex
    end
  else
    @error = "Wrong username"
    erb :newindex
  end
end

post '/login' do
  @username = params[:username]
  @password = params[:password]
  if @username == 'mrflynn00'
    if @password == 'derp'
      erb :home
    else
      @error = "Hey dude, you got the password wrong"
      erb :newindex
    end
  else
    @error = "Wrong username."
    erb :newindex
  end
end

get '/name' do
  @name = (params[:newname] || "Nobody").downcase
  @state = params[:state]
  if @name == "aaron"
    redirect 'http://www.youtube.com/watch?v=oHg5SJYRHA0'
  else
    erb :newname
  end
end