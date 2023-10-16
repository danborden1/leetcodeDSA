require 'pry'
# @param {String} text
# @return {Integer}

def max_number_of_balloons(text)
  letters = text.split('')
  letter_frequency = Hash.new(0)
  letters.each do |letter|
    letter_frequency[letter] += 1
  end
  find_balloons(letter_frequency)
end

def find_balloons(letter_frequency)
  balloons = 0
  while letter_frequency['b'] >= 1 && letter_frequency['a'] >= 1 && letter_frequency['l'] >= 2 && letter_frequency['o'] >= 2 && letter_frequency['n'] >= 1
    balloons += 1
    letter_frequency['b'] -= 1
    letter_frequency['a'] -= 1
    letter_frequency['l'] -= 2
    letter_frequency['o'] -= 2
    letter_frequency['n'] -= 1
  end
  balloons
end

text = "loonbalxballpoon"

puts "#{max_number_of_balloons(text)}"

# Given a string text, you want to use the characters of text to form as many instances of the word "balloon" as possible.

# You can use each character in text at most once. Return the maximum number of instances that can be formed.

 

# Example 1:

# Input: text = "nlaebolko"
# Output: 1

# Example 2:

# Input: text = "loonbalxballpoon"
# Output: 2

# Example 3:

# Input: text = "leetcode"
# Output: 0

 

# Constraints:

#     1 <= text.length <= 104
#     text consists of lower case English letters only.

