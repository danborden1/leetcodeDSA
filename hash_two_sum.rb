def hash_two_sum(nums, target)
  checked_nums = {}
  nums.each_with_index do |num, index|
    return index, checked_nums[target - num] if checked_nums.keys.include?(target - num)

    checked_nums[num] = index
  end
  return 'no hits'
end



def sorted_two_sum(nums, target)
  multiplier = 0  
  while multiplier < nums.length do
    multiplicand = multiplier + 1
    while multiplicand < nums.length do
      if nums[multiplier] + nums[multiplicand] == target
        return nums[multiplier], nums[multiplicand]
      else
        multiplicand += 1
      end
    end
    multiplier += 1
  end
  return 'no answer'
end

def sorted_two_sum_dumb(nums, target)
  nums.each do |num|
    return num, target - 1 if nums.include?(target - num)
  end
end

require 'benchmark'


nums = [23, 45, 12, 8, 56, 72, 6, 90, 42, 17, 33, 88, 61, 24, 75, 19, 2, 96, 30, 7, 50, 38, 14, 78, 3, 68, 92, 13, 10, 67, 81, 95, 27, 1, 55, 37, 4, 99, 29, 41, 5, 49, 77, 11, 53, 70, 9, 64, 35, 22, 91, 47, 18, 16, 20, 87, 36, 74, 32, 71, 21, 85, 25, 46, 31, 28, 44, 76, 66, 62, 59, 80, 58, 98, 94, 65, 69, 60, 15, 84, 26, 34, 57, 89, 40, 48, 73, 43, 63, 79, 51, 54, 86, 52, 83, 82, 93, 97, 39, 70, 66, 7, 26]
nums = nums.sort
target = 30

# puts Benchmark.measure {
#   times.times {hash_two_sum(nums,target)}
# }
puts hash_two_sum(nums,target)


puts sorted_two_sum(nums,target)


# nums = [1, 2, 4, 6, 8, 9, 14, 15]
# target = 13

# puts hash_two_sum(nums, target) ## expect 5, 2