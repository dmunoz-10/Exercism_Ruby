# Roman Numeral Class
class Integer
  ROMAN_NUMBERS = { 'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400,
                    'C' => 100, 'XC' => 90, 'L' => 50, 'XL' => 40, 'X' => 10,
                    'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1 }.freeze
  def to_roman
    number = self
    raise ArgumentError if number < 1 || number > 3000

    roman = ''
    ROMAN_NUMBERS.map do |letter, value|
      times, number = number.divmod(value)
      roman << letter * times
    end

    roman
  end
end
