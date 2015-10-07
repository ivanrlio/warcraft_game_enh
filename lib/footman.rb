# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  attr_accessor :health_points, :attack_points

  def initialize(hp = nil, ap = nil)
    super
    @health_points = 60
    @attack_points = 10
  end

  def attack!(itself, enemy)  
    super
  end
  
  def damage(ap)
    super
  end

end
