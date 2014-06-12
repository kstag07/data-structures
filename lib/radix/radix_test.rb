require 'minitest/autorun'
require 'minitest/pride'
require './radix'
require "benchmark"

describe "Radix test" do
   def setup
    @best = (1..10000).to_a
    @rand = (1..10000).to_a.shuffle
    @worst = @best.reverse
    @neg = (-10000..10000).to_a.shuffle
  end

  def test_worst
    assert_equal @best, @worst.radix
  end

  def test_benchmark
    puts 'best'
    puts Benchmark.measure { @best.radix }
    puts 'rand'
    puts Benchmark.measure { @rand.radix }
    puts 'worst'
    puts Benchmark.measure { @worst.radix }
    puts 'neg'
    puts Benchmark.measure { @neg.radix }
  end

end
