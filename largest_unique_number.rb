def largest_unique_number(nums)
  num_frequency = {}
  nums.each do |num|
    if num_frequency[num].nil?
      num_frequency[num] = 1
    else
      num_frequency[num] = num_frequency[num] + 1
    end
  end
  output = num_frequency.select {|k,v| v == 1}.max
  if output.nil?
    return -1
  end
  output[0]
end

 nums = [9,9,8,8]
puts largest_unique_number(nums)


# Given an integer array nums, return the largest integer that only occurs once. If no integer occurs once, return -1.

# Example 1:

# Input: nums = [5,7,3,9,4,9,8,3,1]
# Output: 8
# Explanation: The maximum integer in the array is 9 but it is repeated. The number 8 occurs only once, so it is the answer.

# Example 2:

# Input: nums = [9,9,8,8]
# Output: -1
# Explanation: There is no number that occurs only once.

 