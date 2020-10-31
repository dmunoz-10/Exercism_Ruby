# Darts class
class Darts
  def initialize(x_coord, y_coord)
    @distance = Math.sqrt(x_coord**2 + y_coord**2)
  end

  def score
    @distance <= 1 && 10 || @distance <= 5 && 5 || @distance <= 10 && 1 || 0
  end
end
