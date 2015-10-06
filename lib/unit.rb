
class Unit 

  attr_reader :health_points

  def initialize(health_points, attack_points)
    @health_points = health_points
    @attack_points = attack_points
  end

  def attack!(enemy)
    enemy.damage(@attack_points)

  end

  def damage(ap)
    @health_points -= ap
  end


end