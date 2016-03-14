class Computer
  attr_reader :choice
  attr_accessor :score

  def initialize
    @choice = nil
    @score = 0
  end

  def choose
    @choice = ["rock", "paper", "scissors"].sample
  end
end
