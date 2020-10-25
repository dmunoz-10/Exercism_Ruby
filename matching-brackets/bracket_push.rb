# Brackets class
class Brackets
  def self.paired?(string)
    temp = string.scan(/[\(\)|{}|\[\]]/).join
    while temp.match(/\(\)/) || temp.match(/{}/) || temp.match(/\[\]/)
      temp.gsub!(/\[\]|{}|\(\)/, '')
    end
    temp.empty?
  end
end

module BookKeeping
  VERSION = 4
end
