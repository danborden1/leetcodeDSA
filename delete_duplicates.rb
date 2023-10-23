require 'pry'
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def delete_duplicates(head)
  node = head
  while !node.nil? && !node.next.nil?
    # binding.pry if node.val == 3
        if node.next.val == node.val
            if node.next.next.nil?
                node.next = nil
                break
            else
              node.next = node.next.next
            end
        end
        node = node.next
    end
    head
end


first = ListNode.new(1)
second = ListNode.new(1)
third = ListNode.new(2)
fourth = ListNode.new(3)
fifth = ListNode.new(3)

# first.next = second
# second.next = third
# third.next = fourth
# fourth.next = fifth
# head = first

first.next = second
head = first

x = delete_duplicates(head)
puts x

binding.pry