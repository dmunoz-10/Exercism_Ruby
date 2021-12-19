class ListOps
  class << self
    def arrays(array)
      counter = 0
      loop do
        break if array.fetch(counter, :not_found).eql?(:not_found)

        counter += 1
      end

      counter
    end

    def concatter(*multiple_arrays)
      new_array = []
      for index in (0...(arrays(multiple_arrays)))
        mapper(multiple_arrays[index]) do |item|
          new_array << item
        end
      end

      new_array
    end

    def factorial_reducer(array)
      multiplication = 1
      mapper(array) do |item|
        multiplication *= item
      end

      multiplication
    end

    def filterer(array)
      return array unless block_given?

      new_array = []
      for index in (0...arrays(array))
        new_array << array[index] if yield(array[index])
      end

      new_array
    end

    def mapper(array)
      return array unless block_given?

      new_array = []
      for index in (0...arrays(array))
        new_array << yield(array[index])
      end

      new_array
    end

    def reverser(array)
      reversed_array = Array.new(arrays(array))
      reversed_counter = -1
      for index in (0...arrays(array))
        reversed_array[reversed_counter] = array[index]
        reversed_counter -= 1
      end

      reversed_array
    end

    def sum_reducer(array)
      sum = 0
      mapper(array) do |item|
        sum += item
      end

      sum
    end
  end
end
