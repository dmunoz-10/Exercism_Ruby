class SimpleLinkedList
  def initialize(list = nil)
    @head = nil
    @tail = nil
    list.each { |e| push(Element.new(e)) } if list
  end

  def push(element)
    @tail.next = element if @tail
    @tail = element
    @head = element unless @head

    self
  end
  alias :<< :push

  def pop
    if @head == @tail
      node = @head
      @head = nil
      @tail = nil
    else
      node = @tail
      @tail = element_before(node)
      @tail.next = nil
    end

    node
  end

  def to_a
    get_array.reverse.map(&:datum)
  end

  def reverse!
    array = get_array.each { |e| e.next = nil }
    @head = nil
    @tail = nil
    array.reverse.each { |e| push(e) }

    self
  end

  private

  def element_before(node)
    temp = @head
    until temp.next == node
      temp = temp.next
    end

    temp
  end

  def get_array
    temp = @head
    array = []
    until temp.nil?
      array << temp
      temp = temp.next
    end

    array
  end
end

class Element
  attr_accessor :next
  attr_reader :datum

  def initialize(datum)
    @datum = datum
    @next = nil
  end
end
