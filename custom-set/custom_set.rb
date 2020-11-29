# CustomSet Class
class CustomSet
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def add(item)
    data << item unless data.include?(item)

    self
  end
  alias << add

  def member?(item)
    data.include?(item)
  end

  def empty?
    data.empty?
  end

  def subset?(other)
    data.all? { |item| other.member?(item) }
  end

  def disjoint?(other)
    (self & other).empty?
  end

  def &(other)
    data & other.data
  end

  def ==(other)
    data.sort == other.data.sort
  end
  alias eql ==

  def intersection(other)
    CustomSet.new(self & other)
  end

  def difference(other)
    CustomSet.new(data.difference(other.data))
  end
  alias - difference

  def union(other)
    CustomSet.new((data + other.data).uniq)
  end
  alias + union
end
