# Sieve Class
class Sieve
  attr_reader :primes
  def initialize(number)
    @primes = []
    2.upto(number) { |x| @primes.push(x) if Sieve.prime_or_not(x) }
  end

  def self.prime_or_not(num)
    count = 0
    (2...num).each do |x|
      count += 1 if (num % x).zero?
    end
    count.zero?
  end
end

module BookKeeping
  VERSION = 1
end
