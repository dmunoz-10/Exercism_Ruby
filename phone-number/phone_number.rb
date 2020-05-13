# PhoneNumber Class
class PhoneNumber
  def self.clean (number)
    aux = number.gsub(/\D/, '').gsub(/^1/,'')
    return aux if('2'..'9') === aux[3] && aux.length == 10
  end
end

module BookKeeping
  VERSION = 2
end
