require "minitest/autorun"
require "minitest/pride"
require "./hash"

describe "Hash Table Set" do

  def test_hash
    table = HashTable.new(30000)
    250000.times do
    table.set((0...9).map { (65 + rand(26)).chr }.join, (0...9).map { (65 + rand(26)).chr }.join.reverse )
    end
  end

def test_get_value
  table = HashTable.new(30000)
  table.set("f", 6)
  250000.times do
     table.set((0...9).map { (65 + rand(26)).chr }.join, (0...9).map { (65 + rand(26)).chr }.join.reverse )
   end
  table.set("hiv", 5)
  v = table.get("hiv")
  r = table.get("f")
  puts r
  puts v
  assert_equal 5, v
  assert_equal 6, r
end

def test_not_string
  table = HashTable.new(11)
assert_raises(RuntimeError) {table.set(5, 5)}
end

def test_nil
  table = HashTable.new(11)
  assert_equal table.get('one'),  nil
  end

end

