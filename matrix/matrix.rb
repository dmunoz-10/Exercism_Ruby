# Matrix Class
class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = getrows(matrix)
    @columns = @rows.transpose
  end

  private

  def getrows(matrix)
    matrix.split("\n").map { |item| item.split(' ').map(&:to_i) }
  end
end
