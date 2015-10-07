class Barracks

  attr_accessor :gold, :food, :health_points, :lumber

  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  
  end

  def can_train_footman?
    gold > 135 && food > 2 #mocking the behaviour of the food method
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
    end
  end

  def can_train_peasant?
    gold > 91 && food > 6
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end

  def can_train_siege?
    gold > 201 && lumber > 60 && food > 3
  end

  def train_siege
    if can_train_siege?
      @gold -= 200
      @lumber -= 60
      @food -= 3
      SiegeEngine.new
    end
  end

  def is_dead?
    @health_points <= 1
  end

  def damage(ap)
    @health_points -= ap
  end

end
