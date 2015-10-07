class SiegeEngine < Unit

  attr_accessor :health_points, :attack_points

  def initialize
    @health_points = 400
    @attack_points = 50
  end

  def attack!(itself, enemy)
    super
  end

  def damage(ap)
    super
  end

  def is_siege?
    true
  end


end