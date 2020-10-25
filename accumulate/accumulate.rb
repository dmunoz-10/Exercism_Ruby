# frozen_string_literal: true

# Accumulate Class
class Array
  def accumulate
    return to_enum(:accumulate) { size } unless block_given?

    each_with_object([]) { |item, array| array << yield(item) }
  end
end
