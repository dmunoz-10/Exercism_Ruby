class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows    = matrix.split("\n").map { |row| row.split(' ').map(&:to_i) }
    @columns = @rows.transpose
  end

  def saddle_points
    saddle_points = []
    (0..rows.size - 1).each do |i|
      (0..columns.size - 1).each do |j|
        saddle_points << [i, j] if rows[i].max == columns[j].min
      end
    end

    saddle_points
  end
end
