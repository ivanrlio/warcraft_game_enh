require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  describe "#damage" do
    it "checks to see whether the siege engien can receive damage" do
      @siege_engine.damage(100)
      expect(@siege_engine.health_points).to eq(300)
    end
  end

  describe "attacking a structure" do
    it "checks to see whether a siege engine deals DOUBLE-DAMAGE to structures" do
      enemy = Barracks.new
      expect(enemy).to receive(:damage).with(100)
      @siege_engine.attack!(@siege_engine, enemy)
    end
  end

  describe "attacking a unit" do
    it "checks to see if the other unit is a siege engine, if true, deal normal damage" do
      enemy = SiegeEngine.new
      expect(enemy).to receive(:damage).with(50)
      @siege_engine.attack!(@siege_engine, enemy)
    end
    it "checks to see if the other unit is a non-siege unit, if false, deal NO damage" do
      enemy = Footman.new
      expect(enemy).to receive(:damage).with(0)
      @siege_engine.attack!(@siege_engine, enemy)
    end
    it "checks to see whether a peasant can be attacked, should be false" do
      enemy = Peasant.new
      expect(enemy).to receive(:damage).with(0)
      @siege_engine.attack!(@siege_engine, enemy)
    end
  end


end