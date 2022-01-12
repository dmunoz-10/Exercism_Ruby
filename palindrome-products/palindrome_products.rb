class Palindromes
  Palindrome = Struct.new(:value, :factors)

  def initialize(min_factor: 1, max_factor: nil)
    raise ArgumentError if min_factor < 1 || min_factor > max_factor || max_factor.nil?

    @min_factor = min_factor
    @max_factor = max_factor
  end

  def generate
    @palindromes = (@min_factor..@max_factor)
      .to_a
      .repeated_combination(2)
      .each_with_object({}) do |(number1, number2), hash|
        if palindrome?(number1 * number2)
          hash[number1 * number2] ||= []
          hash[number1 * number2] << [number1, number2]
        end
      end
  end

  def smallest
    Palindrome.new(*@palindromes.min)
  end

  def largest
    Palindrome.new(*@palindromes.max)
  end

  private

  def palindrome?(number)
    number.to_s == number.to_s.reverse
  end
end
