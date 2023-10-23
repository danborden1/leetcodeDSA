def solution(operations)
    $state = {}
    # output = []
    operations.each do |operation|
        action = operation[0].downcase
        name = operation[1]
        # args = operation[2..-1]
        puts operation
        if action == 'add'
            
            holder = CardHolder.new(name, operation[2], operation[3])
            puts "new holder: #{holder}"
            
            holder.save
            puts "state: #{$state}"
        else
            holder = $state[name]
            holder.send(action.to_sym, operation[2])
        end
    end
    output = []
    $state.each do |name, value|
      output << [name, value.card.is_valid ? "$#{value.card.balance}" : 'error']
    end
    output.sort
end

class CardHolder
  attr_accessor :name, :card
  def initialize(name, card_number, limit)
    @name = name
    @card = Card.new(card_number, limit)
    @limit = limit.gsub('$','').to_i
  end
  
  def save
    $state[name] = self
  end
  
  def charge(value)
  puts "charge value: #{value}"
    return unless @card.valid_card
    new_balance = @card.balance.to_i + value.gsub('$','').to_i
    return if new_balance > @limit.to_i
    
    @card.balance = new_balance
    puts "balance value: #{@card.balance}"
    ## todo make sure that we don't overdraw
    save
  end
  
  def credit(value)
    unless @card.valid_card
      @card.balance = 'error'
      return
    end
    @card.balance = @card.balance.to_i - value.gsub('$','').to_i
    save
  end
  
  
  
end


class Card
  attr_accessor :card_number, :limit, :balance, :valid_card
  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
    @balance = 0
    @valid_card = valid_card?(card_number)
  end
  
  def valid_card?(card_number)
    array = card_number.split('')
    array.all?{|element| '1234567890'.include?(element)} && array.length >= 12 && array.length <= 16
  end
  
  
end

# Imagine that you're writing software for a credit card provider. Your task is to implement a program that will add new credit card accounts, process charges and credits against them, and display summary information.

# You are given a list of commands:

#     Add <card_holder> <card_number> $<limit>: Add command will create a new credit card for the given card_holder, card_number, and limit. It is guaranteed that the given card_holder didn't have a credit card before this operation.
#         New cards start with a $0 balance.
#         Cards numbers should be validated using basic validation.
#         (Bonus) Card numbers should be validated using the Luhn 10 algorithm.
#     Charge <card_holder> $<amount>: Charge command will increase the balance of the card associated with the provided name by the amount specified.
#         Charges that would raise the balance over the limit are ignored as if they were declined.
#         Charges against invalid cards are ignored.
#     Credit <card_holder> $<amount>: Credit command will decrease the balance of the card associated with the provided name by the amount specified.
#         Credits that would drop the balance below $0 will create a negative balance.
#         Credits against invalid cards are ignored.

# Credit Card validation
# In order to ensure the credit card number is valid, we want to run some very basic validation.
# You need to ensure the string is only composed of digits [0-9] and is between 12 and 16 characters long (although most cards are 15 to 16, let's keep it simple).

# (Bonus) How the Luhn algorithm works:

#     Starting with the rightmost digit, which is the check digit, and moving left, double the value of every second digit. If the result of this doubling operation is greater than 9 (e.g., 8 * 2 = 16), then add the digits of the product (e.g., 16: 1 + 6 = 7, 18: 1 + 8 = 9).
#     Take the sum of all the digits.
#     If the total modulo 10 is equal to 0 (if the total ends in zero) then the number is valid according to the Luhn algorithm, otherwise it is not valid.
#     The last Unit Test will be testing for the Luhn algorithm.

# Luhn(number) = 7 + 9 + 9 + 4 + 7 + 6 + 9 + 7 + 7 = 65 = 5 (mod 10) != 0

# Your Challenge

# Return the card holder names with the balance of the card associated with the provided name. The names in output should be displayed in lexicographical order.
# Display "error" instead of the balance if the credit card number does not pass validation.

# Example

# For

# operations = [["Add", "Tom", "4111111111111111", "$1000"],
#               ["Add", "Lisa", "5454545454545454", "$3000"],
#               ["Add", "Quincy", "12345678901234", "$2000"],
#               ["Charge", "Tom", "$500"],
#               ["Charge", "Tom", "$800"],
#               ["Charge", "Lisa", "$7"],
#               ["Credit", "Lisa", "$100"],
#               ["Credit", "Quincy", "$200"]]

# the output should be

# creditCardProvider(operations) = [["Lisa", "$-93"],
#                                   ["Quincy", "error"],
#                                   ["Tom", "$500"]]

# Input/Output

#     [execution time limit] 4 seconds (rb)

#     [memory limit] 1 GB

#     [input] array.array.string operations

#     An array of operations. It is guaranteed that card limits and amounts of each operation are in the range [1, 3000]. It is also guaranteed that each card holder name will contain no more than 10 symbols

#     Guaranteed constraints:
#     1 ≤ operations.length ≤ 10,
#     3 ≤ operations[i].length ≤ 4.

#     [output] array.array.string

#     Array of card holders and their card balances.

# [Ruby] Syntax Tips

# # Prints help message to the console
# # Returns a string
# def helloWorld(name)
#     print "This prints to the console when you Run Tests"
#     return "Hello, " + name
# end

