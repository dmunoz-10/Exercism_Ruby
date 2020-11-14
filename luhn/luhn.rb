# Luhn Class
class Luhn
  def self.valid?(numbers)
    numbers.delete!(' ')
    return if numbers =~ /\D/ || numbers.size <= 1

    (doubling_and_sum(numbers) % 10).zero?
  end

  private_class_method def self.doubling_and_sum(numbers)
    sum = 0
    numbers.to_i.digits.each_with_index do |number, index|
      unless (index % 2).zero?
        number *= 2
        number -= 9 if number > 9
      end
      sum += number
    end

    sum
  end
end
