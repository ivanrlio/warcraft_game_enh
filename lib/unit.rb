
class Unit

  attr_accessor :health_points, :attack_points

  def initialize(hp = nil, ap = nil)
    @health_points = 50
    @attack_points = 10
  end

  def attack!(itself, enemy)
    if itself.is_dead? || enemy.is_dead?
      return false
    else
      if enemy.is_structure? 
        enemy.damage(2*itself.attack_points)
      elsif enemy.is_structure? == false && enemy.is_siege? == false
        enemy.damage(0)
      else
        enemy.damage(itself.attack_points)
      end
    end
  end

  def damage(ap)
    @health_points -= ap
  end

  def is_dead?
    if @health_points >= 1
      return false
    else
      return true
    end
  end

  def is_structure?
    false
  end

  def is_siege?
    false
  end

end