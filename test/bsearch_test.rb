require "minitest/autorun"
require "minitest/pride"
require "bsearch"


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
 end
