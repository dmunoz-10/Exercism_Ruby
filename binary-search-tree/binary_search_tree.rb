# Binary Search Tree Class
class Bst
  attr_reader :data, :left, :right

  def initialize(num)
    @data = num
  end

  def insert(num)
    (@left ? @left.insert(num) : @left = Bst.new(num)) if num <= @data
    (@right ? @right.insert(num) : @right = Bst.new(num)) if num > @data
  end

  def each
    return to_enum(:each) { size } unless block_given?
    @left.each { |x| yield(x) } if @left
    yield @data
    @right.each { |x| yield(x) } if @right
  end
end

module BookKeeping
  VERSION = 1
end
