class Proverb
  def initialize(*chain, qualifier: nil)
    @chain = chain
    @qualifier = qualifier ? "#{qualifier} #{chain.first}" : chain.first
  end

  def to_s
    proverb = @chain.each_cons(2).map { |words| phrase(words.first, words.last) }
    proverb << last_phrase(@qualifier)

    proverb.join
  end

  private

  def phrase(word1, word2)
    "For want of a #{word1} the #{word2} was lost.\n"
  end

  def last_phrase(word)
    "And all for the want of a #{word}."
  end
end
