require 'pry'


def find_sums(nums, query)
  prefix_array = prefix_sum(nums)
  right = prefix_array[query[1]]
  left = query[0] == 0 ? 0 : prefix_array[(query[0] - 1)]
  right - left
end

def prefix_sum(nums)
  array = []
  nums.each_with_index do |num, index|
    if array == []
      array = [num] 
      next
    end 
    
    array << (num + array[index - 1])
  end
  array
end

# Example 1: Given an integer array nums, an array queries where queries[i] = [x, y] 
# and an integer limit, return a boolean array that represents the answer to each 
# query. A query is true if the sum of the subarray from x to y is less than limit,
#  or false otherwise.

# For example, given nums = [1, 6, 3, 2, 7, 2], 
# queries = [[0, 3], [2, 5], [2, 4]], 
# and limit = 13, 
# the answer is [true, false, true].
#  For each query, the subarray sums are [12, 14, 12].


nums = [1, 6, 3, 2, 7, 2]
queries = [[0, 3], [2, 5], [2, 4]]

queries.each do |query|
  puts find_sums(nums, query)
end