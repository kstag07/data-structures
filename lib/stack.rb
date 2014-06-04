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
     else
      current_node.next = @head
       @head = current_node
     end
  end





  def pop
      raise "No nodes in Stack" if @head.nil?
      @head.next = @head
      return @head.value
    end
end



