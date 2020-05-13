# Anagram Class
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select do |x|
      @word.chars.sort == x.downcase.chars.sort && !x.casecmp?(@word)
    end
  end
end

module BookKeeping
  VERSION = 2
end
