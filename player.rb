# this handles details about the players.
# It will contain lives, and their name (1 or 2)

class Player

  def initialize(player)
    @player = player
    @lives = 3
  end
  attr_accessor :lives
end