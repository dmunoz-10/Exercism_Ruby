# frozen_string_literal: true

# Hamming Class
class Hamming
  def self.compute(dna, dna2)
    raise ArgumentError unless dna.size == dna2.size

    (0...dna.length).count { |x| dna[x] != dna2[x] }
  end
end
