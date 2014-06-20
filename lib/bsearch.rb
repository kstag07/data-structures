class Node

  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

end

class BinarySearchTree

  attr_accessor :root



  def initialize(root = nil)
    @root = root
    @count = 0
    @@order = []
  end

def insert(value)
  @root = inserting(@root, value)
    @count += 1
end

def contains(value)
  containing(@root, value)
end

def depth
  depthing(@root)
end

def balance
  balancing(@root)
end

def pre_traverse
  pre_traversing(@root)
end

def ord_traverse
  ord_traversing(@root)
end

def post_traverse
  post_traversing(@root)
end

def breadth_traverse
  breadth_traversing(@root)
end


def size
  @count
end

private

  def balancing(node)
    if node.nil?
      return 0
    elsif node.left || node.right
    l =  depthing(node.left)
    r = depthing(node.right)
    end
    dif = l - r
    return dif
  end


  def depthing(node)
    if node.nil?
      return 0
    elsif node.left || node.right
    l =  depthing(node.left)
    r = depthing(node.right)
  else
    return 1
  end
  (l > r) ? l +1 : r + 1
  end

  def containing(treenode, value)
     if treenode.nil?
       return false
     end
     if treenode.value == value
      return true
     elsif value < treenode.value
      treenode = containing(treenode.left, value)
     elsif value > treenode.value
      treenode = containing(treenode.right, value)
    end
  end



  def inserting(treenode, value)
    if treenode.nil?
    treenode = Node.new(value)
  elsif value < treenode.value
    treenode.left = inserting(treenode.left, value)
  elsif value > treenode.value
    treenode.right = inserting(treenode.right, value)
  end
    return treenode
end

def pre_traversing(node)
    order = []
    stack = []
     while (!stack.empty? or node != nil)
      if node != nil
        order << node.value
        stack.push(node)
        node = node.left
      else
        node = stack.pop
        node= node.right
      end
     end
     order
  end

  def ord_traversing(node)
    order = []
    stack = []
    while (!stack.empty? or node != nil)
      if node != nil
        stack.push(node)
        node = node.left
      else
        node = stack.pop
        order << node.value
        node= node.right
      end
    end
    order
  end

  def post_traversing(node)
    post_traversing(node.left) if node.left
    post_traversing(node.right) if node.right
    @@order << node.value
  end

  def breadth_traversing(node)
    queue = []
    order = []
    queue.unshift(node)
    while !queue.empty?
      node = queue.pop
      order << node.value
      queue.unshift(node.left) if node.left != nil
      queue.unshift(node.right) if node.right != nil
    end
    order
  end


end


