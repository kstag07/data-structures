require "minitest/autorun"
require "minitest/pride"
require "bsearch"
require 'benchmark'


describe "testing a binary search tree" do

  before do
    @b_search = BinarySearchTree.new
    @node = @b_search.insert(5)
    @nodea = @b_search.insert(6)
    @nodeb = @b_search.insert(4)
    @nodec = @b_search.insert(3)
    @noded = @b_search.insert(2)
    @nodee = @b_search.insert(7)
    @nodef = @b_search.insert(8)
    @nodeg = @b_search.insert(9)
    @nodeh = @b_search.insert(42)
    @nodei = @b_search.insert(22)
    @nodej = @b_search.insert(11)
  end

  def test_binary_search_tree_insert_and_contains
    assert @b_search.contains(5)
    assert @b_search.contains(6)
    assert @b_search.contains(4)
    assert @b_search.contains(3)
    refute @b_search.contains(1)
  end

  def test_size
    assert_equal 11, @b_search.size
  end

  def test_depth

    assert_equal 8, @b_search.depth
  end

  def test_balance
    assert_equal -4, @b_search.balance
  end

  def test_pre_order_traverse
    pre_arry = [5, 4, 3, 2, 6, 7, 8, 9, 42, 22, 11]
    assert_equal pre_arry, @b_search.pre_traverse
  end

  def test_in_order_traverse
    ord_arry = [2, 3, 4, 5, 6, 7, 8, 9, 11, 22, 42]
    assert_equal ord_arry, @b_search.ord_traverse
  end

  def test_post_order_traverse
    post_arry =[2, 3, 4, 11, 22, 42, 9, 8, 7, 6, 5]
    assert_equal post_arry, @b_search.post_traverse
  end

  def test_breadth_first_traverse
    breadth_arry =[5, 4, 6, 3, 7, 2, 8, 9, 42, 22, 11]
    assert_equal breadth_arry, @b_search.breadth_traverse
  end

  after do
     puts 'best'
    puts Benchmark.measure { @b_search.contains(5) }
    puts 'worst'
    puts Benchmark.measure { @b_search.contains(11) }
  end

end
