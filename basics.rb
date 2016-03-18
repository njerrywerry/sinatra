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
