require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe 'health' do
    it "should have 500 health points upon initialization" do
      expect(@barracks.health_points).to eq(500)
    end
  end

  describe "#damage" do
    it "should receive half attack power as damage due to building" do 
      @barracks.damage(10)
      expect(@barracks.health_points).to eq(495)
    end
  end

  describe "lumber" do
    it "should have 500 lumber upon initilaization" do
      expect(@barracks.lumber).to eq(500)
    end
  end
  
end