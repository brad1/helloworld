require 'sinatra'

set :port, 8081

get '/' do
  File.read 'index.html'
end

get '/hello' do
  'hello from Ruby!'
end
 
post '/hello/udp' do
  'unimplemented'
end
