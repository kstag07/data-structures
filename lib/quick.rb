
class Array



  def quick_sort(left =0, right = self.size - 1)
    if left < right
      pivot_index = rand(left..right)
      new_pivot_index = partitionn(left, right, pivot_index)
      quick_sort(left, new_pivot_index - 1)
      quick_sort(new_pivot_index +1, right)
    end
    self
  end


private
  def partitionn(left, right, pivot_index)
    pivot_value = self[pivot_index]
    self[right], self[pivot_index] = self[pivot_index], self[right]
    store_index = left
    (left...right).each do |n|
      if self[n] < pivot_value
        self[n], self[store_index] = self[store_index], self[n]
        store_index += 1
      end
    end
     self[store_index], self[right] = self[right], self[store_index]
     store_index
end

end



