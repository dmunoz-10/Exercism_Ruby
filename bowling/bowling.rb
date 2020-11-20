# Game Class
class Game
  BowlingError = Class.new(StandardError)

  def initialize
    @frames = Array.new(11) { Frame.new }
    @i = 0
  end

  def roll(pins)
    raise BowlingError if closed_game?

    @frames[@i] << pins
    @frames[0...@i].each { |frame| frame << pins if frame.add_bonus? }
    @i += 1 if @frames[@i].closed_frame? && @i != 10
  end

  def score
    raise BowlingError unless closed_game?

    @frames[0...10].sum(&:score)
  end

  private

  def closed_game?
    @frames[0...10].all? { |frame| frame.closed_frame? && !frame.add_bonus? }
  end

  # Frame Class
  class Frame
    def initialize
      @rolls = []
    end

    def <<(pins)
      raise BowlingError unless pins.between?(0, 10)

      @rolls << pins

      raise BowlingError if invalid_frame?
    end
    alias push <<

    def score
      @rolls.sum
    end

    def strike?
      @rolls[0] == 10
    end

    def spare?
      @rolls[0..1].sum == 10
    end

    def common_frame?
      @rolls.size == 2 && @rolls.sum < 10
    end

    def invalid_frame?
      !strike? && !spare? && @rolls.size <= 2 && !@rolls.sum.between?(0, 10)
    end

    def closed_frame?
      common_frame? || strike? || spare?
    end

    def add_bonus?
      (strike? || spare?) && @rolls.size < 3
    end
  end
end
