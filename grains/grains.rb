# frozen_string_literal: true

# Grains Class
class Grains
  def self.square(number)
    raise ArgumentError if number < 1 || number > 64

    (1...number).reduce(1) { |temp| temp + temp }
  end

  def self.total
    (1..64).reduce(1) { |total| total + total } - 1
  end
end
