require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_check.rb')

get('/') do
  erb(:input)
end

get('/output') do
  erb(:output)
end
