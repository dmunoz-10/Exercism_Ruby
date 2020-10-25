# frozen_string_literal: true

# Year Class
class Year
  def self.leap?(num_year)
    return false if num_year % 4 != 0
    return true unless (num_year % 100).zero?
    return false unless (num_year % 400).zero?

    true
  end
end
