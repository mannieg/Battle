class Player
  DEFAULT_HIT_POINTS = 100
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HIT_POINTS
  end

  def receive_damage(damage)
    @hp -= damage unless is_dead?
  end

  def is_dead?
    hp <= 0
  end

end
