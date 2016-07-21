class Player
  DEFAULT_HP = 60

  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def return_name
    @name
  end

  # def attack(player)
  #   player.damage_taken
  # end

  def damage_taken
    @hit_points -= 10
  end
end
