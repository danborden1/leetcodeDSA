require 'set'
require 'pry'
def count_elements(arr)
  prefix_set = Set.new(arr)
  output = 0
  arr.each do |num|
    # binding.pry
    if prefix_set.include?(num + 1)
      output += 1
    end
  end

  output
end

def increment_all_by_one(arr)
  Set.new(arr.map {|int| int + 1})
end


arr = [1,2,3]
puts count_elements(arr)