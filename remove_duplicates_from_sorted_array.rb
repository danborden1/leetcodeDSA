
def remove_duplicates(nums)
    used_letters = []
    nums.each_with_index do |num, index|
        nums.pop(index) if used_letters.include?(num)
        used_letters << num
    end
    [nums.length, nums]
end


puts remove_duplicates([0,0,1,1,1,2,3,3,4])