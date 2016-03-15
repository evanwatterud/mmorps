class Computer
  attr_reader :choice
  attr_accessor :score, :win

  def initialize
    @choice = nil
    @score = 0
    @win = false
  end

  def choose
    @choice = ["Rock", "Paper", "Scissors"].sample
  end
end
