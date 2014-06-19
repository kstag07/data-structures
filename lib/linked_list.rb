class Node

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end

end

class LinkedList
  attr_accessor :value, :tail, :count, :head
  def initialize
    @head = Node.new(value)
    @tail = nil
    @count = 0
  end


  def insert(value)
     current_node = Node.new(value)
    if @head.nil?
      @head = current_node
      @tail = current_node
    else
      current_node.next = @head
      @head = current_node
    end
    @count += 1
  end

  def size()
    @count
  end

  def search(value)
    current_node = @head
      while current_node != nil
         if current_node.value == value
           return current_node.value
        else
          current_node = current_node.next
        end
      end
      nil
    end

  def remove(value)
    if @head.value == value
      @head = @head.next
    else
      current_node = @head.next
      prev_node = @head
      while current_node
        if current_node.value == value
          prev_node.next = current_node.next
        else
          prev_node = current_node
          current_node = current_node.next
        end
      end
        nil
    end
  end

  def to_str
    current_node = @head
    csv = Array.new
    while current_node.next != nil
      csv << current_node.value.to_s
      current_node = current_node.next
    end
    csv.reverse.join(", ")
  end

end
