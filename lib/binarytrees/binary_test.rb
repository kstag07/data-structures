require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './binary'
require 'pry'

class TestBinary < MiniTest::Unit::TestCase

  def test_order
    tim = Tree.new('Tim', Tree.new('Jony', Tree.new('Dan', nil, nil), Tree.new('Katie',Tree.new('Peter', nil, nil), Tree.new('Andrea', nil, nil))), Tree.new('Phil', Tree.new('Craig', nil, nil), Tree.new('Eddie', nil, nil)))
    array = ["Dan", "Jony", "Peter", "Katie", "Andrea", "Tim", "Craig", "Phil", "Eddie"]
    assert_equal array, tim.order_traverse
  end

  def test_pre
    tim = Tree.new('Tim', Tree.new('Jony', Tree.new('Dan', nil, nil), Tree.new('Katie',Tree.new('Peter', nil, nil), Tree.new('Andrea', nil, nil))), Tree.new('Phil', Tree.new('Craig', nil, nil), Tree.new('Eddie', nil, nil)))
    array = ['Tim', 'Jony', 'Dan', 'Katie', 'Peter', 'Andrea', 'Phil', 'Craig', 'Eddie']
    assert_equal array, tim.pre_traverse
  end

  def test_post
    tim = Tree.new('Tim', Tree.new('Jony', Tree.new('Dan', nil, nil), Tree.new('Katie',Tree.new('Peter', nil, nil), Tree.new('Andrea', nil, nil))), Tree.new('Phil', Tree.new('Craig', nil, nil), Tree.new('Eddie', nil, nil)))
    array = ['Dan', 'Peter', 'Andrea', 'Katie', 'Jony', 'Craig', 'Eddie', 'Phil', 'Tim']
    assert_equal array, tim.post_traverse
  end
end
