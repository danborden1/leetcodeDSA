require 'pry'
def make_good(s)
    array = s.split('')
    # case = check_case(array.first)
    new_array = []
    removed = true
    while removed
      array.each_with_index do |char, inex|
end

def same_character_difference_case?(a,b)
  !letters_same_case?(a,b) && letters_same_character?(a,b)
end

def letters_same_case?(a, b)
  check_case(a) == check_case(b)
end

def letters_same_character?(a,b)
  a.downcase == b.downcase
end

def check_case(char)
  if 'abcdefghijklmnopqrstuvwxyz'.split('').include?(char)
    return 'lower'
  else
    return 'upper'
  end
end

s = "leEeetcode"
puts make_good(s)

s = "abBAcC"
puts make_good(s)

# Given a string s of lower and upper case English letters.

# A good string is a string which doesn't have two adjacent characters s[i] and s[i + 1] where:

#     0 <= i <= s.length - 2
#     s[i] is a lower-case letter and s[i + 1] is the same letter but in upper-case or vice-versa.

# To make the string good, you can choose two adjacent characters that make the string bad and remove them. You can keep doing this until the string becomes good.

# Return the string after making it good. The answer is guaranteed to be unique under the given constraints.

# Notice that an empty string is also good.

 

# Example 1:

# Input: s = "leEeetcode"
# Output: "leetcode"
# Explanation: In the first step, either you choose i = 1 or i = 2, both will result "leEeetcode" to be reduced to "leetcode".

# Example 2:

# Input: s = "abBAcC"
# Output: ""
# Explanation: We have many possible scenarios, and all lead to the same answer. For example:
# "abBAcC" --> "aAcC" --> "cC" --> ""
# "abBAcC" --> "abBA" --> "aA" --> ""

# Example 3:

# Input: s = "s"
# Output: "s"

 

# Constraints:

#     1 <= s.length <= 100
#     s contains only lower and upper case English letters.

