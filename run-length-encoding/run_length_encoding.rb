# RunLengthEncoding class
class RunLengthEncoding
  def self.encode(str)
    str.gsub(/(.)\1*/).each { |x| x.size > 1 ? "#{x.size}#{x[0]}" : x[0].to_s }
  end

  def self.decode(str)
    str.scan(/(\d*)(.)/).map { |i, j| i.empty? ? j : j * i.to_i }.join
  end
end
