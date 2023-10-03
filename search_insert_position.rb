def search_insert(nums, target)
    nums.each_with_index do |num, index|
        return index if num == target
        return index - 1 if num > target
        return nums.length
    end
end


