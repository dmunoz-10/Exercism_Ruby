# ArmstrongNumbers class
class ArmstrongNumbers
  def self.include?(number)
    temp = number.to_s.each_char.map { |c| c.to_i**number.to_s.size }
    temp.sum == number
  end
end
