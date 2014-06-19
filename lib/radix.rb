

class Array

  def radix
    array_copy = self
    max = array_copy.max > array_copy.min.abs ? array_copy.max : array_copy.min.abs
    amount_of_passes = max.to_s.length
    amount_of_passes.times do |i|
      buckets =[]
      20.times {buckets << []}
      base = 10**i
      array_copy.each do |n|
        bucket_value = n / base
        index = bucket_value % 10
        index += 10 if n >= 0
        buckets[index] << n
      end
      array_copy = buckets.flatten
    end
    array_copy
  end
end
