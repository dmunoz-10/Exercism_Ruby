# Nth Prime Class
class Prime
  def self.nth(number)
    raise ArgumentError if number <= 0
    count = 0
    2.upto(Float::INFINITY) do |x|
      count += 1 if prime_or_not(x)
      return x if count == number
    end
  end

  def self.prime_or_not(number)
    final = Math.sqrt(number)
    (2..final).all? { |x| (number % x) != 0 }
  end
end

module BookKeeping
  VERSION = 1
end
