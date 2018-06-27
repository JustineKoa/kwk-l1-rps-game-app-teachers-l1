class RPSGame
  @@valid_moves = ["rock", "paper", "scissors"]
  # Write your code here!
  def initialize(move)
    @move = move
    if !self.valid_play(move)
      raise PlayTypeError
    end
  end

  def valid_play(move)
    @@valid_moves.include? move
  end

  def computer_play
    random_int = rand(3)
    @@valid_moves[random_int]
  end



  class PlayTypeError < StandardError
    # Don't be alarmed! This is a class set inside a class, but works just fine in Ruby
    # In this case, we're creating a custom error that should be raised if RPSGame.new receives an invalid move as an argument
  end

end
