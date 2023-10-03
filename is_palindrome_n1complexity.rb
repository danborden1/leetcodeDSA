require 'pry'
def is_palindrome?(word)
  array = word.split('')
  left = 0
  right = array.size - 1
  loop do
    if array[left] == array[right]
      return true if right - left <= 1
      left += 1
      right -=1
    else 
      return false
    end
  end
end


def is_dumb_palindrome?(word) ## lol this is faster
  word == word.reverse
end

substring = 'asdlfkanwelfaisdvlakwejfoaisdjflawkejfasdovbawdkfhaiu' * 90
one = substring + substring.reverse
two = 'asdnfalkwdnfalwkdfnalskdujaowidufjowidjfasd'
three = 'asdfasdlfkanlsdkna' + 'qz' + 'asdfasdlfkanlsdkna'.reverse
puts is_palindrome?('aba')
puts is_palindrome?(one)
puts is_palindrome?(two)
puts is_palindrome?(three)

require 'benchmark'

puts Benchmark.measure {
  999.times { is_palindrome?(one)}
}

puts Benchmark.measure {
  999.times { is_dumb_palindrome?(one)}
}