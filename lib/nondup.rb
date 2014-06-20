# require 'pry'
# require 'pry'
class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value =nil)
    @value = value
    @next_node = nil
    @prev_node = nil
  end

end

class List

  attr_accessor :head, :tail, :count

  def initialize
    @head = nil
    @tail = nil
    @count = 0
  end

  def remove_dup
    pointer = @head
    while pointer != @tail
      searched = pointer.next_node
      until searched.nil?
      if searched.value == pointer.value
        searched.prev_node.next_node = searched.next_node
      searched.next_node.prev_node = searched.prev_node
      end
        searched = searched.next_node
      end
      pointer = pointer.next_node
  end
    self
  end

  def fast_dup
    a = self.to_str.split(",").to_a.uniq

    new_list = List.new
    a.each do |n|
      new_list.add(n)
    end
    new_list.to_str
  end



def add(value)
  current = Node.new(value)
  if @head.nil?
    @head = current
    @tail = current
  else
    current.prev_node = @tail
    @tail.next_node = current
    @tail = current
  end
  @count += 1
end

  def remove(value)
    element = search(value)
    if element.nil? || element.prev_node.nil?
     nil
    else
      element.prev_node.next_node = element.next_node
      element.next_node.prev_node = element.prev_node
    end
    @count -= 1
  end



def search(value)
    current_node = @head
      while current_node != nil
         if current_node.value == value
           return current_node
        else
          current_node = current_node.next_node
        end
      end
end

def to_str
    current_node = @head
    csv = Array.new
    while current_node != nil
      csv.unshift(current_node.value)
      current_node = current_node.next_node
    end
    csv.reverse.join(", ")
  end

  def size()
    @count
  end

end

