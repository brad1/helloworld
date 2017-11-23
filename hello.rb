require 'sinatra'

set :port, 8081

get '/hello' do
  'hello from Ruby!'
end
 
post '/hello/udp' do
  'unimplemented'
end
