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




end


