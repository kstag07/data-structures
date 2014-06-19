require 'minitest'
require 'minitest/autorun'
require 'stack'
require 'minitest/pride'

class TestNodeLink < MiniTest::Unit::TestCase


  def test_pushing
    stack = Stack.new
    stack.push("one")
  end


  def test_popped
  stack = Stack.new
   stack.push('one')
   stack.pop
   assert_equal 'one', stack.pop
 end


  def test_error
    stack = Stack.new
    assert_raises(RuntimeError) {stack.pop}
  end

 end
