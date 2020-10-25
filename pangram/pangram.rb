# Pangram Class
class Pangram
  def self.pangram?(phrase)
    phrase.downcase.scan(/[a-z]/).uniq.size == 26
  end
end
