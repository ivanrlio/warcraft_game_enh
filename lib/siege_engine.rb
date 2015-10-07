class SiegeEngine < Unit

  attr_accessor :health_points, :attack_points

  def initialize
    @health_points = 400
    @attack_points = 50
  end

  def attack!(enemy)
    return false if is_dead? || enemy.is_dead?
    if enemy.is_a? (Barracks) 
      enemy.damage(2 * attack_points)
    elsif enemy.is_a? (SiegeEngine)
      enemy.damage(attack_points)
    end 
  end

end