# Phrase Class
class Phrase
  @phrase = ''
  def initialize(phrase)
    @phrase = phrase.downcase.scan(/\w+'?\w|\d+/)
  end

  def word_count
    @phrase.each_with_object(Hash.new(0)) { |word, temp| temp[word] += 1 }
  end
end

module BookKeeping
  VERSION = 1
end
