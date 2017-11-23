require 'sinatra'
require_relative 'ruby/udp.rb'

set :port, 8081

get '/' do
  File.read 'index.html'
end

get '/hello' do
  'hello from Ruby!'
end
 
get '/hello/udp' do
  a = Hello::UDP.new
  a.execute
end
