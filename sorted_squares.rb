def sorted_squares(nums)
  nums.map {|num| 
    num * num
  }.sort
end


nums = [-7, -3, 2, 3, 11]

puts "#{sorted_squares(nums)}"