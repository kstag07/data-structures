class Tree

  attr_accessor :value, :left, :right

  def initialize (value, left = nil, right = nil)
    @value = value
     @left = left
    @right = right
    @@output = []
  end

def order_traverse
  stack = []
  order = []
  node = self
  while ( !stack.empty? or node != nil) do
    if (node != nil)
      stack.push(node)
      node = node.left
    else
       node = stack.pop
       order << node.value
       node = node.right
    end
  end
 order
end

def post_traverse
    left.post_traverse if left
    right.post_traverse if right
    @@output << value
  end






  def pre_traverse
    order = []
    stack = []
    node = self
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

end
