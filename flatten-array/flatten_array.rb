# frozen_string_literal: true

# Flatten class
class FlattenArray
  def self.flatten(array)
    array.each_with_object([]) do |item, new_array|
      next if item.nil?

      if item.is_a? Array
        new_array.concat(flatten(item))
      else
        new_array << item
      end
    end
  end
end
