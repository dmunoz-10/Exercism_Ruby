# Class Triangle
class Triangle
  def initialize(values)
    @values = values
  end

  def equilateral?
    return false unless validate
    @values.uniq.length == 1
  end

  def isosceles?
    return false unless validate
    @values.uniq.length < 3
  end

  def scalene?
    return false unless validate
    return false if @values[2] < @values[0] || @values[2] < @values[1]
    @values.uniq.length == 3
  end

  def degenerate?
    return false unless validate
    (@values[0] + @values[1]) == @values[2]
  end

  def validate
    return false if @values.min <= 0
    ((@values[0] + @values[1]) < @values[2]) == false
  end
end
