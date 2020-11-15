# Triplet Class
class Triplet
  def initialize(num1, num2, num3)
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end

  def sum
    @num1 + @num2 + @num3
  end

  def product
    @num1 * @num2 * @num3
  end

  def pythagorean?
    @num1**2 + @num2**2 == @num3**2 && @num1 < @num2 && @num2 < @num3
  end

  def self.where(max_factor:, min_factor: 1, sum: nil)
    combinations = (min_factor..max_factor).to_a.combination(3)
    combinations.each_with_object([]) do |combination, triplets|
      triplet = new(*combination)
      next if !triplet.pythagorean? || (sum && triplet.sum != sum)

      triplets << triplet
    end
  end
end
