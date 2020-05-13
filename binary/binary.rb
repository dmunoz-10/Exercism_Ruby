# Binary Class
class Binary
  def self.to_decimal(number)
    raise ArgumentError if number =~ /[^0-1]/
    number.to_i.digits.each_with_index.sum { |x, i| x * (2**i) }
  end
end

module BookKeeping
  VERSION = 3
end
