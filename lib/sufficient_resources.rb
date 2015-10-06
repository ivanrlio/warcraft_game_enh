require_relative 'spec_helper'

class SufficientResources

  def need_resources(gold, food)
    if food < 2 && gold < 135
      puts "NOT ENOUGH RESOURCES!"
    elsif food < 2
      puts "NOT ENOUGH FOOD!"
    elsif gold < 135
      puts "NOT ENOUGH GOLD!"
    else 
      return false
    end
   
  end 

end