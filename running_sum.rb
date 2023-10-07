def running_sum(nums)
  array = []
  nums.each_with_index do |num, index|
    if index == 0
      array = [num]
      next
    end

    array << num + array[index - 1]
  end
  array
end


nums = [3,1,2,10,1]
puts "#{running_sum(nums)}"