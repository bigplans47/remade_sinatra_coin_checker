require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_check.rb')

get('/') do
  erb(:input)
end

post('/output') do
  @user_input = params.fetch("user_input")
  new_coin = Coin.new(@user_input)
  @output_to_show = new_coin.coin_calculator()
  erb(:output)
end
