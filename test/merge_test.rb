require 'minitest/autorun'
require 'minitest/pride'
require 'merge'
require "benchmark"

describe "Merge test" do
   def setup
    @best = (1..10000).to_a
    @rand = (1..10000).to_a.shuffle
    @worst = @best.reverse
  end

  def test_worst
    assert_equal @best, @worst.sorting
  end

  def test_benchmark
    puts 'best'
    puts Benchmark.measure { @best.sorting }
    puts 'rand'
    puts Benchmark.measure { @rand.sorting }
    puts 'worst'
    puts Benchmark.measure { @worst.sorting }
  end

end
