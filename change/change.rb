# Change Class
class Change
  class ImpossibleCombinationError < ArgumentError; end
  class NegativeTargetError < ArgumentError; end

  def self.generate(coins, money)
    raise NegativeTargetError if money.negative?
    return [] if money.zero?

    1.upto(money) do |i|
      valid_combination = coins.repeated_combination(i).find do |combination|
        combination.sum == money
      end

      return valid_combination if valid_combination
    end

    raise ImpossibleCombinationError
  end
end
