require "minitest/autorun"
require "minitest/pride"
require "nondup"

class ListTest < MiniTest::Unit::TestCase

  def test_dup
    @list = List.new
      @list.add(1)
     @list.add(2)
      @list.add(3)
       @list.add(3)
        @list.add(4)
    @list.add(5)
    assert_equal 6, @list.size
    nondup = "1, 2, 3, 4, 5"
    @list.remove_dup
     assert_equal nondup, @list.to_str
  end

  def test_fast
    @list = List.new
      @list.add(1)
     @list.add(2)
      @list.add(3)
       @list.add(3)
        @list.add(4)
    @list.add(5)
    assert_equal 6, @list.size
    nondup = "1,  2,  3,  4,  5"
     assert_equal nondup, @list.fast_dup
  end




  def test_size
    list = List.new
    assert_equal 0, list.size
    list.add('one')
    list.add('two')
    assert_equal 2, list.size
  end

  def test_add
    list = List.new
    assert_equal 0, list.size
    list.add('one')
    assert_equal 1, list.size
  end

def test_searching
    list = List.new
    list.add('one')
    list.add('two')
    var = list.search('two')
    v =var.value
    assert_equal 'two', v
    assert_equal nil, list.search('three')
  end

  def test_removing
    @list = List.new
    @list.add('one')
    @list.add('two')
    @list.add('three')
    var = @list.search('three')
    v = var.value
    assert_equal 'three', v
    @list.remove('two')
    assert_equal 2, @list.size
    assert_equal nil, @list.search('two')
  end


   def test_stringing
     list = List.new
     list.add('one')
     list.add('two')
     list.add('three')
     assert_equal 'one, two, three', list.to_str
   end


end
