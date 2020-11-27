# Translation Class
module Translation
  CODON_PROTEIN = {
    AUG: 'Methionine',
    UUU: 'Phenylalanine', UUC: 'Phenylalanine',
    UUA: 'Leucine', UUG: 'Leucine',
    UCU: 'Serine', UCC: 'Serine', UCA: 'Serine', UCG: 'Serine',
    UAU: 'Tyrosine', UAC: 'Tyrosine',
    UGU: 'Cysteine', UGC: 'Cysteine',
    UGG: 'Tryptophan',
    UAA: 'STOP', UAG: 'STOP', UGA: 'STOP'
  }.freeze

  def self.of_codon(codon)
    CODON_PROTEIN[codon.to_sym]
  end

  def self.of_rna(strand)
    codons = strand.scan(/.{3}/)
    proteins = []
    codons.each do |codon|
      protein = of_codon(codon)
      raise InvalidCodonError if protein.nil?
      break if protein == 'STOP'

      proteins << protein
    end

    proteins
  end
end

class InvalidCodonError < StandardError; end
