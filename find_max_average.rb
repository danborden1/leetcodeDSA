require 'pry'
def find_max_average(nums, k)
  nums = nums.map(&:to_f)
  
  left = 0
  right = left + k
  average = -999999999
  nums.each_with_index do |num, index|
    right = [index + k - 1, nums.length - 1].min
    average = [(nums[index..right].sum)/k, average].max
    binding.pry
    break if index == nums.length - k
  end
  average
end




nums = [1,12,-5,-6,50,3]
k = 4

# puts find_max_average(nums, k)

nums = [5]
k = 1

# puts find_max_average(nums, k)

nums = [-1]
k = 1

# puts find_max_average(nums, k)

