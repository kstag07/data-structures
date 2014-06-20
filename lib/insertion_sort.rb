
def insertion_sort(array)
  for n in 1..array.length - 1 do
    index = n
  while index > 0 && (array[index - 1]  > array[index])
        array[index], array[index - 1] = array [index- 1], array[index]
        index -= 1
    end
  end
  array
end



