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
      expect(["Rock", "Paper", "Scissors"]).to include(computer.choice)
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

  describe "#win" do
    it "has a reader for win" do
      expect(computer.win).to be(false)
    end

    it "has a writer for win" do
      computer.win = true
      expect(computer.win).to be(true)
    end
  end
end
