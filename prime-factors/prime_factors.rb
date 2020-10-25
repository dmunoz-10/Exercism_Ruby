require 'prime'

# PrimeFactors Class
class PrimeFactors
  def self.of(number)
    temp = []

    Prime.each(number) do |p|
      return temp if number == 1

      while (number % p).zero?
        number /= p
        temp << p
      end
    end

    temp
  end
end
