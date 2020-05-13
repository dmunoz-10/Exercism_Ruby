# Accumulate Class
class Array
  def accumulate
    return to_enum(:accumulate) { size } unless block_given?
    each_with_object([]) { |x, t| t << yield(x) }
  end
end

module BookKeeping
  VERSION = 1
end
