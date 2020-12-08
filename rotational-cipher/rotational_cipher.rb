# RotationalCipher Class
class RotationalCipher
  def self.rotate(string, rotation)
    string.each_char.map do |letter|
      letter =~ /[a-zA-Z]/ ? replace_letter(letter, rotation) : letter
    end.join
  end

  class << self
    private

    ALPHABET = ('a'..'z').to_a.freeze

    def replace_letter(letter, rotation)
      index = ALPHABET.index(letter.downcase) + rotation
      index -= ALPHABET.size while index > ALPHABET.size - 1
      letter_replaced = ALPHABET[index]
      letter =~ /[[:upper:]]/ ? letter_replaced.upcase : letter_replaced
    end
  end
end
