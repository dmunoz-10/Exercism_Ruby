# Trinary Class
class Trinary
  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 if @number =~ /[^0-2]/
    @number.to_i.digits.each_with_index.sum { |x, i| x * 3**i }
  end
end

module BookKeeping
  VERSION = 1
end
