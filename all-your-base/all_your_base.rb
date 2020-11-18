# BaseConverter Class
class BaseConverter
  def self.convert(input_base, digits, output_base)
    @input_base = input_base
    @digits = digits
    @output_base = output_base
    raise ArgumentError if error?
    return [0] if @digits.sum.zero?

    number = convert_to_base_10

    @output_base == 10 ? number.digits.reverse : convert_to_output_base(number)
  end

  class << self
    private

    def convert_to_base_10
      @digits.reverse.each_with_index.sum { |x, i| x * (@input_base**i) }
    end

    def convert_to_output_base(number)
      result = []
      while number.positive?
        number, bit = number.divmod(@output_base)
        result.unshift(bit)
      end

      result
    end

    def error?
      @digits.any? { |d| d.negative? || d >= @input_base } ||
        @input_base <= 1 || @output_base <= 1
    end
  end
end
