class Node
  attr_accessor :value, :next_node

  def initialize(value =nil)
    @value = value
    @next_node = nil
  end

end

class Queue

  attr_accessor :head, :tail, :count

  def initialize
    @head = nil
    @tail = nil
    @count = 0
  end


def enqueue(value)
  current = Node.new(value)
  if @head.nil?
    @head = current
    @tail = current
  else
    @tail.next_node = current
    @tail = current
  end
  @count += 1
end


  def dequeue
    raise "Current Queue is empty" if @head.nil?
    oldhead = @head
    @head = @head.next_node
    @count -= 1
    oldhead.value
  end

  def size()
    @count
  end

end
