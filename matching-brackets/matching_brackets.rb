# Brackets class
class Brackets
  def self.paired?(string)
    temp = string.scan(/[\(\)|{}|\[\]]/).join
    temp.gsub!(/\[\]|{}|\(\)/, '') while temp.match(/\(\)/) || temp.match(/{}/) || temp.match(/\[\]/)
    temp.empty?
  end
end
