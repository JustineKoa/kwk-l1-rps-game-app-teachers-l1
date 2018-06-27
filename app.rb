require_relative 'config/environment'
require_relative 'models/rps_game.rb'

class GameApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/rps_game' do
    erb :rps_game
  end

  post '/start_game' do
    @player_move = params["move"]
    game = RPSGame.new(@player_move)
    puts @player_move
    puts game.computer_play
    puts game.won?

  end

end
