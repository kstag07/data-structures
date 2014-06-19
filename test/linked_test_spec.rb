require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'linked_list'

class TestNodeLink < MiniTest::Unit::TestCase
  def setup
    @node = Node.new
  end

  def test_inserting
    list = LinkedList.new
    list.insert('num')
    assert_equal 'num', node.head
  end

  def test_sizing
    list = LinkedList.new
    list.insert('one')
    list.insert('two')
    list.insert('three')
    assert_equal 3, list.size()
  end

  def test_searching
    list = LinkedList.new
    list.insert('one')
    list.insert('two')
    assert_equal 'two', list.search('two')
    assert_equal 'nil', list.search('three')
  end

  def test_removing
    list = LinkedList.new
    list.insert('one')
    list.insert('two')
    list.insert('three')
    list.remove('three')
    assert_equal 'two', list.search('two')
    assert_equal 'one', list.search('one')
    assert_equal 'nil', list.search('three')
  end

  def test_stringing
    list = LinkedList.new
    list.insert('one')
    list.insert('two')
    list.insert('three')
    assert_equal ('one', 'two', 'three'),list.to_s()
  end

end

