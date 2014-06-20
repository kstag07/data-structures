require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'queue'

class QueueTest < MiniTest::Unit::TestCase



  def test_size
    queue = Queue.new
    assert_equal 0, queue.size
    queue.enqueue('one')
    queue.enqueue('two')
    assert_equal 2, queue.size
  end

  def test_enqueue
    queue = Queue.new
    assert_equal 0, queue.size
    queue.enqueue('one')
    assert_equal 1, queue.size
  end

  def test_dequeue
    queue = Queue.new
    queue.enqueue('one')
    queue.enqueue('two')
    queue.enqueue('three')
    assert_equal 3, queue.size
    result = queue.dequeue
    assert_equal 'one', result
    assert_equal 2, queue.size
  end

  def test_dequeue_nil
    queue = Queue.new
    assert_raises(RuntimeError){queue.dequeue}
  end

end
