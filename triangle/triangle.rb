# Class Triangle
class Triangle
  def initialize(values)
    @values = values
  end

  def equilateral?
    valid? && @values.uniq.length == 1
  end

  def isosceles?
    valid? && @values.uniq.length < 3
  end

  def scalene?
    valid? && @values.uniq.length == 3
  end

  def degenerate?
    valid? && (@values[0] + @values[1]) == @values[2]
  end

  private

  def valid?
    @values.min.positive? && @values.max <= @values.sum - @values.max
  end
end
