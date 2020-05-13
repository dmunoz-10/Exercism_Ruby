# Scrabble class
class Scrabble
  LETTER_SCORE = { 'a' => 1, 'g' => 2, 'm' => 3, 's' => 1,
                   'b' => 3, 'h' => 4, 'n' => 1, 't' => 1,
                   'c' => 3, 'i' => 1, 'o' => 1, 'u' => 1,
                   'd' => 2, 'j' => 8, 'p' => 3, 'v' => 4,
                   'e' => 1, 'k' => 5, 'q' => 10, 'w' => 4,
                   'f' => 4, 'l' => 1, 'r' => 1, 'x' => 8,
                   'y' => 4, 'z' => 10 }
  LETTER_SCORE.default = 0

  def initialize(word)
    @word = word.to_s.strip.downcase
  end

  def self.score(word)
    new(word).score
  end

  def score
    @word.chars.sum { |letter| LETTER_SCORE[letter] }
  end
end
