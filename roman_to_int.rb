# @param {String} s
# @return {Integer}
def roman_to_int(s)
  num = 0
  values = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
  }
  s.chars.each_with_index do |char, index|
      nextchar = s.chars[index + 1]
      if char == 'I' && (nextchar == 'X' || nextchar == 'V')
          num -= 1
          next
      end
      if char == 'X' && (nextchar == 'L' || nextchar == 'C')
          num -= 10
          next
      end
      if char == 'C' && (nextchar == 'D' || nextchar == 'M')
          num -= 100
          next
      end
          
      num = num + values[char]
  end
  num
end
puts roman_to_int('LVIII')