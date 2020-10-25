# Series Class
class Series
  def initialize(digits)
    @temp = digits
  end

  def slices(number)
    raise ArgumentError if number > @temp.length

    aux = []
    @temp.length.times do |item|
      aux << @temp[item, number] if @temp[item, number].length == number
    end
    aux
  end
end
