# Accumulate Class
class Array
  def accumulate
    each_with_object([]) { |item, array| array << yield(item) }
  end
end
