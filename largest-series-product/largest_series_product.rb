# Series Class
class Series
  def initialize(number)
    raise ArgumentError if number =~ /[a-zA-Z]/

    @number = number.chars.map(&:to_i)
  end

  def largest_product(digits)
    raise ArgumentError if digits.negative? || digits > @number.size
    return 1 if digits.zero?

    @number.each_cons(digits)
           .map { |series| series.inject(:*) }
           .max
  end
end
