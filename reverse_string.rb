def reverse_string(array) ## in place with no additional space complexity
  left = 0
  right = array.length - 1

  while left < array.length / 2
    left_val = array[right]
    right_val = array[left]
    array[left] = left_val
    array[right] = right_val

    left += 1
    right -= 1
  end
  array
end


array = 'abcdefghijklmnopqrstuvwxyz'.split('')

puts "#{reverse_string(array)}"

puts reverse_string(array) == array.reverse