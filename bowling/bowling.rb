# Game Class - UNFINISHED
class Game
  BowlingError = Class.new(StandardError)

  def initialize
    @frames = []
    @i = 0
  end

  def roll(pins)
    raise BowlingError unless (0..10).cover?(pins)
    raise BowlingError if full?
    @frames << pins
  end

  def score
    full?
    validate
    @i = 0
    (1..10).each_with_object([]) { |_x, res| res << proccess(@i) }.sum
  end

  def proccess(ind)
    if @frames[ind] == 10
      @i += 1
      10 + @frames[ind + 1] + @frames[ind + 2]
    elsif @frames[ind] + @frames[ind + 1] == 10
      @i += 2
      10 + @frames[ind + 2]
    else
      @i += 2
      @frames[ind] + @frames[ind + 1]
    end
  end

  def full?
    return false if @frames.length < 11
    index = 0
    
  end

  def validate
    raise BowlingError if @frames.empty?
    10.times do
      if @frames[@i] == 10
        @i += 1
        next
      end
      if @frames[@i] + @frames[@i + 1] < 11
        @i += 2
        next
      end
      raise BowlingError
    end
  end
end

module BookKeeping
  VERSION = 3
end
