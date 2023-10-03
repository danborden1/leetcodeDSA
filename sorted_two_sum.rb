require 'pry'
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


nums = [1, 2, 4, 6, 8, 9, 14, 15]
target = 13

puts Benchmark.measure {
  9999999.times {sorted_two_sum(nums,target)}
}

puts Benchmark.measure {
  9999999.times {sorted_two_sum(nums,target)}
}
