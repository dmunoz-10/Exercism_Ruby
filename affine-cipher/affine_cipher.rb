# Affine Class
class Affine
  ALPHABET = ('a'..'z').to_a.freeze

  def initialize(a_key, b_key)
    raise ArgumentError unless a_key.gcd(ALPHABET.size) == 1

    @a = a_key
    @b = b_key
  end

  def encode(plaintext)
    text = plaintext.downcase.gsub(/\W/, '')
    text.each_char.map do |char|
      char =~ /\d/ ? char : ALPHABET[encryption(char)]
    end.join.gsub(/(.{5})/, '\1 ').strip
  end

  def decode(ciphertext)
    text = ciphertext.downcase.delete(' ')
    text.each_char.map do |char|
      char =~ /\d/ ? char : ALPHABET[decryption(char)]
    end.join
  end

  private

  def encryption(letter)
    (@a * ALPHABET.index(letter) + @b) % ALPHABET.size
  end

  def decryption(letter)
    y = ALPHABET.index(letter)
    (modular_multiplicative_inverse * (y - @b)) % ALPHABET.size
  end

  def modular_multiplicative_inverse
    a = @a % ALPHABET.size
    m = ALPHABET.size
    (1..m).each { |x| return x if (a * x) % m == 1 }
    1
  end
end
