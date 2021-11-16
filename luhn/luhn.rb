# Luhn Class
class Luhn
  class << self
    def valid?(numbers)
      temp = numbers.delete(' ')
      return unless temp =~ /^\d{2,}$/

      doubling_and_sum(temp).modulo(10).zero?
    end

    private

    def doubling_and_sum(numbers)
      numbers.to_i.digits.each_slice(2).sum do |even, odd=0|
        odd *= 2
        odd -= 9 if odd > 9
        even + odd
      end
    end
  end
end
