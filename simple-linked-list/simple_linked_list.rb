class SimpleLinkedList
  def initialize(list = nil)
    @list = []
    list.each { |e| push(Element.new(e)) } if list
  end

  def push(element)
    @list.unshift(element)

    self
  end
  alias :<< :push

  def pop
    @list.shift
  end

  def to_a
    @list.map(&:datum)
  end

  def reverse!
    @list.reverse!

    self
  end
end

class Element
  attr_accessor :datum, :next

  def initialize(datum)
    @datum = datum
    @next = nil
  end
end
