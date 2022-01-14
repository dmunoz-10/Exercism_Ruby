class Deque
  Node = Struct.new(:value, :previous_node, :next_node, keyword_init: true)

  def initialize
    @first_node = nil
    @last_node = nil
  end

  def push(value)
    node = Node.new(value: value, previous_node: @last_node)

    @last_node.next_node = node if @last_node
    @last_node = node
    @first_node = node unless @first_node

    self
  end

  def pop
    return if empty_list?

    node = @last_node
    @last_node = node.previous_node
    @last_node.next_node = nil if @last_node
    @first_node = nil if @first_node == node

    node.value
  end

  def unshift(value)
    node = Node.new(value: value, next_node: @first_node)

    @first_node.previous_node = node if @first_node
    @first_node = node
    @last_node = node unless @last_node

    self
  end

  def shift
    return if empty_list?

    node = @first_node
    @first_node = node.next_node
    @first_node.previous_node = nil if @first_node
    @last_node = nil if @last_node == node

    node.value
  end

  private

  def empty_list?
    @first_node.nil? && @last_node.nil?
  end
end
