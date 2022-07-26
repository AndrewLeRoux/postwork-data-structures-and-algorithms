def selection_sort(arr)
  arr.each_with_index do |x,idx|
    index = 0
    min = 0
    length = arr.length - 1
    sub_array = arr[idx..length]
    sub_array.each_with_index do |y, idy|
      if (idy == 0)
        min = sub_array[idy]
        index = idy + idx
      elsif (sub_array[idy] < min)
        min = sub_array[idy]
        index = idy + idx
      end
    end
    arr[index] = arr[idx]
    arr[idx] = min
  end
  arr
  
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort([3, -1, 5, 2])

  puts

  # Don't forget to add your own!

  # BENCHMARK HERE, you can print the average runtime
  long_input = []

  100.times { long_input << rand }
end

# Please add your pseudocode to this file
# And a written explanation of your solution
