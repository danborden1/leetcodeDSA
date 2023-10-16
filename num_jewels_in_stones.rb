require 'pry'
def num_jewels_in_stones(jewels, stones)
  jewel_set = {}
  jewels.split('').each do |jewel|
    jewel_set[jewel] = 1
  end

  stone_set = derive_frequency_hash(stones)
  jewel_count = 0
  jewel_set.each do |k, v|
    next if stone_set[k].nil?
    
    jewel_count += stone_set[k]
  end

  jewel_count
end



def derive_frequency_hash(string)
  freq_hash = {}
  array = string.split('')
  array.each do |letter|
    if freq_hash[letter].nil?
      freq_hash[letter] = 1
    else
      freq_hash[letter] += 1
    end
  end
  freq_hash
end


jewels = "z"
stones = "ZZ"
puts num_jewels_in_stones(jewels, stones)


# You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.

# Letters are case sensitive, so "a" is considered a different type of stone from "A".

 

# Example 1:

# Input: jewels = "aA", stones = "aAAbbbb"
# Output: 3

# Example 2:

# Input: jewels = "z", stones = "ZZ"
# Output: 0

 

# Constraints:

#     1 <= jewels.length, stones.length <= 50
#     jewels and stones consist of only English letters.
#     All the characters of jewels are unique.

