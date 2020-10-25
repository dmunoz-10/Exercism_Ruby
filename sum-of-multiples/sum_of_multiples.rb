# Sum of multiples class
class SumOfMultiples
  def initialize(*numbers)
    @numbers = *numbers
  end

  def to(number)
    ((1...number).find_all { |num| @numbers.any? { |x| (num % x).zero? } }).sum
  end
end
