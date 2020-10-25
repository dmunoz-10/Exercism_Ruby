# frozen_string_literal: true

# Squares Class
class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    return 1 if @number == 1

    ((@number + 1.0) * @number / 2.0)**2.0
  end

  def sum_of_squares
    return 1 if @number == 1

    (@number**3.0 / 3.0) + (@number**2.0 / 2.0) + (@number / 6.0)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
