class Transpose
  def self.transpose(input)
    array = input.split("\n").map(&:chars)
    new_array = []
    until array.empty?
      new_array << array.map { |row| (row.shift || ' ') }

      array.pop while array.last&.empty?
    end

    new_array.map(&:join).join("\n").rstrip
  end
end
