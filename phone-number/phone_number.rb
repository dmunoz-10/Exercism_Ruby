# PhoneNumber Class
class PhoneNumber
  def self.clean(number)
    aux = number.gsub(/\D/, '').gsub(/^1/, '')
    return nil if (%w[0 1] & [aux[0], aux[3]]).any? || aux.length != 10

    aux
  end
end
