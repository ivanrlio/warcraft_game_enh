# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  attr_accessor :health_points, :attack_power , :damage

  def initialize
    @health_points = 60
    @attack_power = 10
  end

  def attack!(enemy)  
    enemy.damage(@attack_power)
  end
  
  def damage(ap)
    @health_points -= ap
  end
end
