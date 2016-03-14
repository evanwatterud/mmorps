require "spec_helper"

describe Computer do
  let(:computer) { Computer.new }

  describe "#choice" do
    it "has a reader for choice" do
      expect(computer.choice).to be(nil)
    end
  end

  describe "#choose" do
    it "should choose rock, paper, or scissors for the computer" do
      computer.choose
      expect(["rock", "paper", "scissors"]).to include(computer.choice)
    end
  end

  describe "#score" do
    it "has a reader for score" do
      expect(computer.score).to eq(0)
    end

    it "has a writer for score" do
      computer.score += 1
      expect(computer.score).to eq(1)
    end
  end
end
