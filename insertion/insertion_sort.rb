require 'pry-rails'
def insertion_sort(array)
  for n in 1..array.length - 1 do
    j = n
  while j > 0 && (array[j - 1]  > array[j])
        array[j], array[j - 1] = array [j - 1], array[j]
        j -= 1
    end
  end
  array
end



