require_relative 'player'

class Game

  attr_reader :name1, :name2, :current_turn
  def initialize(name1, name2)
      @name1 = name1
      @name2 = name2
      @current_turn = name1
  end

  def turn_switcher
    current_turn = name2
  end

  def attack(player)
    player.damage_taken
  end
end


# Test-drive towards having Game.new accept two
# Player instances
#
# Change messages being called on Player
# instances to ones being called on a Game
# instance instead
#
# Replace the $player_1 and $player_2 global
# variables with references to a $game global
# variable
# that is instantiated when a game is started.
