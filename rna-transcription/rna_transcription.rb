# Rna Transcription Class
class Complement
  def self.of_dna(dna)
    return '' if dna =~ /[^GCTA]/

    temp = []
    dna.each_char do |x|
      temp.push('C') if x.eql?('G')
      temp.push('G') if x.eql?('C')
      temp.push('A') if x.eql?('T')
      temp.push('U') if x.eql?('A')
    end
    temp.join
  end
end
