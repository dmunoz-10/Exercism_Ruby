# Squares Class
class Squares
  attr_reader :square_of_sum
  attr_reader :sum_of_squares
  attr_reader :difference
  def initialize(number)
    @square_of_sum = 0
    @sum_of_squares = 0
    @difference = 0
    1.upto(number) { |x| @square_of_sum += x }
    @square_of_sum **= 2
    1.upto(number) { |x| @sum_of_squares += x**2 }
    @difference = @square_of_sum - @sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
