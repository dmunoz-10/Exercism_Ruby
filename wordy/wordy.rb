class WordProblem
  NUMBER_REGEX = /-?\d+/.freeze
  ORDINAL_NUMBER_REGEX = /\d+(st|nd|rd|th)/.freeze
  WORDS_REGEX = /[a-zA-Z\s]*/.freeze
  BODY_REGEX = /(#{WORDS_REGEX})(#{NUMBER_REGEX}|#{ORDINAL_NUMBER_REGEX} power)/.freeze
  REGEX = /\AWhat is (#{NUMBER_REGEX})((#{BODY_REGEX})*)\?\z/.freeze

  def initialize(string)
    @string = string
    @answer = 0
  end

  def answer
    analyze_string

    @answer
  end

  private

  def analyze_string
    data = @string.match(REGEX)
    raise ArgumentError unless data

    initiator, full_operations, last_operation, last_operator, last_number, _ = data.captures
    @answer = initiator.to_i

    analyze_full_operations(full_operations, last_operation, last_operator, last_number)
  end

  def analyze_full_operations(full_operations, last_operation, last_operator, last_number)
    if full_operations == last_operation
      analyze_operation(last_operator, last_number)
    else
      full_operations.scan(BODY_REGEX).each do |operator, number|
        analyze_operation(operator, number)
      end
    end
  end

  def analyze_operation(operator, number)
    case operator.strip
    when 'plus'
      @answer += number.to_i
    when 'minus'
      @answer -= number.to_i
    when 'multiplied by'
      @answer *= number.to_i
    when 'divided by'
      @answer /= number.to_i
    when 'raised to the'
      @answer **= number.to_i
    else
      raise ArgumentError
    end
  end
end
