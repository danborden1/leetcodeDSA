require 'pry'
def longest_ones(nums, k)
  left = right = 0
  longest_window = []
  while left < nums.length do
    right = left
    while right < nums.length do
      window = nums[left..right]
      # binding.pry
      longest_window = window if is_valid?(window, k) && window.length > longest_window.length
      right += 1
    end
    left += 1
  end
  longest_window.length
end

def is_valid?(window, k)
  zeroes_in_window(window) <= k
end

def zeroes_in_window(window)
  window.select{|x| x == 0}.length
end

# def has_only_two_zeros_at_end?(window)
#   window.pop[-1] == 0 && window.pop[-2] == 0 && window.none?{|num| num == 0}
# end

# def has_two_zeros_at_beginning?(window)
#   window.pop[0] == 0 && window.pop[1] == 0 && window.none?{|num| num == 0}
# end

# def has_zero_on_each_side?(window)
#   window.pop[0] == 0 && window.pop[-1] == 0 && window.none?{|num| num == 0}
# end

 nums = [1,1,1,0,0,0,1,1,1,1,0] 
 k = 2

# nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1]
# k = 3

# nums = [0,0,0,1]
# k = 4
 puts longest_ones(nums, k)


# Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.

 

# Example 1:

# Input: nums = [1,1,1,0,0,0,1,1,1,1,0], k = 2
# Output: 6
# Explanation: [1,1,1,0,0,1,1,1,1,1,1]
# Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.

# Example 2:

# Input: nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k = 3
# Output: 10
# Explanation: [0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1]
# Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.

 

# Constraints:

#     1 <= nums.length <= 105
#     nums[i] is either 0 or 1.
#     0 <= k <= nums.length

