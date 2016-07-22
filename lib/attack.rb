class Attack

  def initialize(player)
    @player = player
  end

  def execute
    @player.receive_damage(random_damage)
  end

  private

  def random_damage
    Kernel.rand(0..10)
  end

end
