require_relative 'spec_helper'


describe Unit  do

  before :each do
    @unit = Unit.new(50, 10)
  end

  describe "#is_dead?" do
    it "should return true if health points = 0" do
      @unit.health_points = 0
      expect(@unit.is_dead?).to eq(true)
    end
  

  describe "#attack! unless is_dead?"
    it "a dead unit should not be able to attack another unit" do
      enemy = Unit.new(50, 10)
      @unit.health_points = 0
      expect(@unit.attack!(@unit, enemy)).to eq(false)
    end
  
    it "dead unit should not receive damage from another unit" do
      enemy = Unit.new(0, 10)
      expect(@unit.attack!(@unit, enemy)).to eq(false)
      # expect(enemy).to receive(:damage).with(10)
      # @unit.attack!(enemy)
    end
  end

  describe "footman.is_structure?" do
    it "checks to see whether footman inherits is.structure?" do
      footman = Footman.new
      expect(footman.is_structure?).to eq(false)
    end
  end
end