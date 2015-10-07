# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  attr_accessor :health_points, :attack_points

  def initialize(hp = 60, ap = 10)
    super
    @health_points = hp
    @attack_points = ap
  end

  def attack!(enemy)
    if enemy.is_a?(Barracks)
      enemy.damage(ap/2)
    else
      enemy.damage(ap)
    end
  end

end
