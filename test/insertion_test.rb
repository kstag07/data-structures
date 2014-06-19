require 'minitest/autorun'
require 'minitest/pride'
require 'insertion_sort'
require 'benchmark'

describe "Insertion test" do

  def setup
    @best = (1..10000).to_a
    @worst = @best.reverse
  end

  def test_worst
    assert_equal @best, insertion_sort(@worst)
  end

  def test_benchmark
    puts 'best'
    puts Benchmark.measure { insertion_sort(@best) }
    puts 'worst'
    puts Benchmark.measure { insertion_sort(@worst) }
  end

end
