#!/bin/ruby

require 'json'
require 'stringio'


#
# Complete the 'parseValidate' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING state as parameter.
#

# o,X,O,x,O,x,o,X,o
def parseValidate(state)
    # Write your code here
    
    array = state.split(',', -1)
    array = array.map(&:upcase)
    # puts check_horizontal(array)
    return "Error" unless array.all?{|char| ['x','X','o','O',''].include?(char)}
    matrix = 
    puts "#{array}"
    winners = []
    winners += check_horizontal(array)
    winners += check_vertical(array)
    winners += check_diagonal(array)
    return "Error" if winners.uniq.size > 1
    return "Error" unless fair_game?(array)
    return "Incomplete" if winners.empty? && array.any?{|char| char == ''}
    return "Tie" if winners.empty?
    
    "#{winners.first.upcase}-winner"
end

def fair_game?(array)
    x_count = array.select{|item| item.downcase == 'x'}.length
    o_count = array.select{|item| item.downcase == 'o'}.length
    (x_count - o_count).abs <= 1
end


def check_horizontal(state)
    conditions = [[0,1,2], [3,4,5], [6,7,8]]
    winners = []
    conditions.each do |condition|
        char = state[condition[0]]
        if [state[condition[0]], state[condition[1]], state[condition[2]]].all?{|element| element == char}
          winners << state[condition[0]]
        end
    end
    winners
end

def check_vertical(state)
    winners = []
    if state[0] == state[3] && state[3] == state[6] && state[0] != ''
        winners << state[0]
    end
    if state[1] == state[4] && state[4] == state[7] && state[1] != ''
        winners << state[1]
    end
    if state[2] == state[5] && state[5] == state[8] && state[2] != ''
        winners << state[2]
    end
    winners
end

def check_diagonal(state)  
    winners = []
    if state[0] == state[4] && state[4] == state[8] && state[0] != ''
        winners << state[0]
    end
    if state[2] == state[4] && state[4] == state[6] && state[2] != ''
        winners << state[2]
    end
    winners
end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

state = gets.chomp

result = parseValidate state

fptr.write result
fptr.write "\n"

fptr.close()