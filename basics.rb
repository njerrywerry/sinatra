require 'sinatra'

# basic routes
get '/' do
  "Hello, World!"
end

get '/about' do
  "A little about me."
end

# accessing URL parameters
get '/hello/:name/:city' do
  "Hello there #{params[:name].swapcase}  from #{params[:city]}."
end

get '/more/*' do
  params[:splat]
end

# creating a form to capture user data
get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

# 'encrypting' messages
get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
end
