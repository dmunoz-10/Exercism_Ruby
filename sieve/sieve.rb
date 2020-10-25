# Sieve Class
class Sieve
  attr_reader :primes

  def initialize(number)
    @primes = []
    2.upto(number) { |item| @primes.push(item) if Sieve.prime?(item) }
  end

  def self.prime?(num)
    count = 0
    (2...num).each { |item| count += 1 if (num % item).zero? }
    count.zero?
  end
end
