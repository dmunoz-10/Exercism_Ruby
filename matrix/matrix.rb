# Matrix Class
class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = get_rows(matrix)
    @columns = @rows.transpose
  end

  private

  def get_rows(matrix)
    matrix.split("\n").map { |item| item.split(' ').map(&:to_i) }
  end
end
