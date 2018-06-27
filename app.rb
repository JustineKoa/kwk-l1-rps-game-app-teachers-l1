require_relative 'config/environment'
require_relative 'models/rps_game.rb'

class GameApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/start_game' do
    @player_move = params["move"]
    @game = RPSGame.new(@player_move)
    # puts @player_move
    @computer_move = game.computer_play
    # puts game.won?
    erb :rps_game
  end

end
