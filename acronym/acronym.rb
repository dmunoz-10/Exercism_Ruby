# Acronym class
class Acronym
  def self.abbreviate(str)
    str.scan(/\b\w/).join.upcase
  end
end
