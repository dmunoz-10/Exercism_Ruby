# CollatzConjecture Class
class CollatzConjecture
  def self.steps(number)
    raise ArgumentError unless number.positive?

    steps = 0
    while number != 1
      number = number.even? ? number / 2 : (number * 3) + 1
      steps += 1
    end

    steps
  end
end
