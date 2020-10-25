# Isogram Class
class Isogram
  def self.isogram?(letters)
    auxiliary_letters = letters.upcase.scan(/\w/)
    auxiliary_letters.uniq.length == auxiliary_letters.length
  end
end
