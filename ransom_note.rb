
def can_construct_note_from_magazine(ransom_note, magazine)
  ransom_hash = derive_frequency_hash(ransom_note)
  magazine_hash = derive_frequency_hash(magazine)
  ransom_hash.each do |k,v|

    return false if magazine_hash[k].nil? || magazine_hash[k] < v
  end
  true
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

ransom_note = 'asdlkfjnawoeifuajlskvanhweiofuhys'
magazine = 'asdlkfjnawoeifuajlskvanhweiofuhysavbowdiuhaowejbnirugbe87ghjkh'
puts "#{can_construct_note_from_magazine(ransom_note, magazine)}"



# Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

# Each letter in magazine can only be used once in ransomNote.

 

# Example 1:

# Input: ransomNote = "a", magazine = "b"
# Output: false

# Example 2:

# Input: ransomNote = "aa", magazine = "ab"
# Output: false

# Example 3:

# Input: ransomNote = "aa", magazine = "aab"
# Output: true

 

# Constraints:

#     1 <= ransomNote.length, magazine.length <= 105
#     ransomNote and magazine consist of lowercase English letters.

