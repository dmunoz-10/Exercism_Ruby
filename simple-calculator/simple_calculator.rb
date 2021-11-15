class SimpleCalculator
  UnsupportedOperation = Class.new(StandardError)

  ADDITION       = '+'.freeze
  MULTIPLICATION = '*'.freeze
  DIVISION       = '/'.freeze
  ALLOWED_OPERATIONS = [ADDITION, MULTIPLICATION, DIVISION].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)

    return_operation(first_operand, second_operand, operation)
  end

  class << self
    private
  
    def return_operation(first_operand, second_operand, operation)
      return 'Division by zero is not allowed.' if operation == DIVISION && second_operand.zero?

      result = get_result(first_operand, second_operand, operation)

      "#{first_operand} #{operation} #{second_operand} = #{result}"
    end

    def get_result(first_operand, second_operand, operation)
      case operation
        when ADDITION
          first_operand + second_operand
        when MULTIPLICATION
          first_operand * second_operand
        when DIVISION
          first_operand / second_operand
      end
    end
  end
end
