class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_turn = player_1
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def player_turn
    @player_turn
  end

  def defending_player
    opponent_of(@player_turn)
  end

  def switcher
    if @player_turn == player_1
      @player_turn = player_2
    else
      @player_turn = player_1
    end
  end

  def attack(opponent)
  	damage = Kernel.rand(0..100)
    opponent.receive_damage(damage)
  end

  private

  def opponent_of attacker
    @players.find {|player| player != attacker }
  end

end
