# Phrase Class
class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.scan(/\w+'?\w|\d+/)
  end

  def word_count
    @phrase.tally
  end
end
