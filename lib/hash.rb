require 'benchmark'


class HashTable
  attr_accessor :buckets

  def initialize(size)
    @size = size
    self.buckets = Array.new(@size){Array.new()}
  end

  def set(k, v)
    raise "Key is not a string" unless k.is_a? String
    index = get_hash(k)
    self.buckets[index] << {k => v}
  end

  def get(k)
    index = get_hash(k)
    a = self.buckets[index]
    hash = a.detect {|h| h.has_key?(k) }
    hash ? hash[k] : nil
end

private

  def get_hash(key)
    arr = []
    key.each_byte {|n| arr << n }
    v =  arr.reduce(:+) % @size
  end




end



# (1..1000000).each do |i|
#   entry = HashEntry.new i.to_s, "bar#{i}"

#   table << entry
# end

# %w(100000 500000 900000).each do |key|
#   time = Benchmark.realtime do
#     table[key]
#   end

#   puts "Finding #{key} took #{time * 1000} ms"
# end
