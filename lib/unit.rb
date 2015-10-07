
class Unit

  attr_accessor :health_points, :attack_points

  def initialize(hp, ap)
    @health_points = hp
    @attack_points = ap
  end


  def attack!(enemy)
    if is_dead? || enemy.is_dead?
      return false
    end
    enemy.damage(@attack_points)
  end

  def damage(ap)
    @health_points -= ap
  end

  def is_dead?
    @health_points <= 1
  end
end