require 'pry'
def is_valid(s)
    next_char_hash = {
      "(" => ")",
      "[" => "]",
      "{" => "}"
    }
    most_recent = []
    array = s.split('')
    array.each_with_index do |letter, index|
      if most_recent == []
        most_recent << letter
        next 
      end
      if next_char_hash[most_recent.last] == letter
        
        most_recent.pop[index - 1]
        next 
      end
      most_recent << letter 
    end
  return false unless most_recent == []
  return true
end


puts is_valid('()')
puts is_valid('({})')
puts is_valid('(}')
puts is_valid('({()})')