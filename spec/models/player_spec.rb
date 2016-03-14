require "spec_helper"

describe Player do
  let(:player) { Player.new }

  describe "#choice" do
    it "has a reader for choice" do
      expect(player.choice).to be(nil)
    end

    it "has a writer for choice" do
      player.choice = "rock"
      expect(player.choice).to eq("rock")
    end
  end

  describe "#score" do
    it "has a reader for score" do
      expect(player.score).to eq(0)
    end

    it "has a writer for score" do
      player.score += 1
      expect(player.score).to eq(1)
    end
  end
end
