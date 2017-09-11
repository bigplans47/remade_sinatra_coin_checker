require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_check.rb')

get('/') do
  erb(:input)
end

get('/output') do
  @user_input = params.fetch("user_input")
  erb(:output)
end
