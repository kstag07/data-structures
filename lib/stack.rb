class Node

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end

end

class Stack

  attr_accessor :value, :head


   def push(value)
    current_node = Node.new(value)
     if @head.nil?
      @head = current_node
      @tail = current_node
     else
      current_node.next = @head
      current_node.next = @tail
       @head = current_node
     end
  end





  def pop
      raise "No nodes in Stack" if @head.nil?
      return @head.value
      @head.next = @head
    end
end



