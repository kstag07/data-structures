require 'minitest/autorun'
require 'minitest/pride'
require './quick'
require 'pry'
require 'benchmark'

describe 'Quick sort test' do

  def setup
    @best = (1..10000).to_a
    @rand = (1..10000).to_a.shuffle
    @worst = @best.reverse
  end

  def test_worst
    assert_equal @best, @worst.quick_sort
  end

  def test_benchmark
    puts 'best'
    puts Benchmark.measure { @best.quick_sort }
    puts 'rand'
    puts Benchmark.measure { @rand.quick_sort }
    puts 'worst'
    puts Benchmark.measure { @worst.quick_sort }
  end

end

