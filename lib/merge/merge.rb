require 'pry'


class Array
  def sorting
    return self if self.length == 1
    left, right = self.each_slice( (self.size/2.0).round ).to_a
    return mergin(left.sorting, right.sorting)
    end

  def mergin(left, right)
    new_arr = []
    until left.empty? || right.empty?
      if left[0] < right[0]
        new_arr << left.shift
      else
        new_arr << right.shift
      end
    end
    new_arr + right + left
end

end


