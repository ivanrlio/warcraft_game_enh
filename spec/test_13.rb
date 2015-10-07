require_relative 'spec_helper'

describe Barracks do


  before :each do
    @barracks = Barracks.new
  end

  describe '#train_siege?' do
    it "costs 200 gold, 60 lumber and 3 food" do
      @barracks.train_siege
      expect(@barracks.gold).to eq(800)
      expect(@barracks.lumber).to eq(440)
      expect(@barracks.food).to eq(77)
    end
    it "produces a siege engine unit" do
      @barracks.train_siege
      siege_engine = SiegeEngine.new
      expect(siege_engine).to be_an_instance_of(SiegeEngine)
    end
  end

  describe '#can_train_siege?' do
    it "can be trained if there is enough resources" do
      expect(@barracks.can_train_siege?).to eq(true)
    end

    it "cannot be trained if there is not enough gold" do
      expect(@barracks).to receive(:gold).and_return(200)
      expect(@barracks.can_train_siege?).to be_falsey
    end

    it "cannot be trained if there is not enough lumber" do
      expect(@barracks).to receive(:lumber).and_return(60)
      expect(@barracks.can_train_siege?).to be_falsey
    end

    it "cannot be trained if there is not enough food" do
      expect(@barracks).to receive(:food).and_return(3)
      expect(@barracks.can_train_siege?).to be_falsey
    end
  end








end