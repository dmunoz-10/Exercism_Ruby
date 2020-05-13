# Nucleotide Class
class Nucleotide
  def initialize(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    raise ArgumentError if dna =~ /[^GCTA]/
    new(dna)
  end

  def count(letter)
    @dna.count(letter)
  end

  def histogram
    temp = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    @dna.chars { |x| temp[x] += 1 }
    temp
  end
end
