require_relative 'config/environment'
require_relative 'models/rps_game.rb'

class GameApp < Sinatra::Base
  get '/rps/:play' do
    # Your app code goes here
    # Don't worry about this UNTIL you've passed all the tests!
    erb :rps_game
  end
end
