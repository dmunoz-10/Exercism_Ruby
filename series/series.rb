# Series Class
class Series
  def initialize(digits)
    @temp = digits
  end

  def slices(number)
    raise ArgumentError if number > @temp.length
    aux = []
    @temp.length.times do |x|
      aux << @temp[x, number] if @temp[x, number].length == number
    end
    aux
  end
end
