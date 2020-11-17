# PerfectNumber Class
class PerfectNumber
  def self.classify(number)
    raise RuntimeError unless number.positive?

    aliquot_sum = (1..(number / 2)).find_all { |n| (number % n).zero? }.sum

    if aliquot_sum < number
      'deficient'
    elsif aliquot_sum > number
      'abundant'
    else
      'perfect'
    end
  end
end
