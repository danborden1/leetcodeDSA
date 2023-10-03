
require 'pry'
def length_of_longest_subarray_with_sum_less_than_k(nums, k)
  left = right = 0
  length = 0
  while left < nums.length - 1 && right < nums.length - 1 do
    sum = nums[left..right].sum
    # binding.pry if sum < k
    if sum < k
binding.pry
      length = [right - left + 1, length].max
      # puts 
      right += 1 unless right == nums.length - 1
      
    else
      left +=1
      right = left      
    end
  end
  length
end


nums = [3,2,1,3,1,1]
k = 5


puts length_of_longest_subarray_with_sum_less_than_k(nums, k)















































































  # left = 0
  # curr = 0
  # ans = 0
  # right = 0
  # while right < nums.length - 1
  #   curr += nums[right]
  #   right += 1
  #   while curr > k 
  #     curr = curr - nums[left]
  #     left += 1
  #   end

  #   ans = [ans, right - left + 1].max
  # end
  # ans