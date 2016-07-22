require_relative 'player'

class Game

  attr_reader :current_turn
  
  def initialize(name1, name2)
    @players = [name1, name2]
    @current_turn = name1
  end

  def name1
    @players.first
  end

  def name2
    @players.last
  end

  def attack
    opponent_of(@current_turn).damage_taken
    turn_switcher
  end

private

    def turn_switcher
      if current_turn == name1
        @current_turn = name2
      else
        @current_turn = name1
      end
    end

    def opponent_of(attacker)
      @players.find {|player| player != attacker }
    end
end
