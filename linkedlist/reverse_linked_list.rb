require 'pry'


class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end



first = ListNode.new(1)
second = ListNode.new(2)
third = ListNode.new(3)
fourth = ListNode.new(4)
fifth = ListNode.new(5)

first.next = second
second.next = third
third.next = fourth
fourth.next = fifth
head = first


def reverse_linked_list(head)
    prev = nil
    current = head
    while !current.nil?
        next_node = current.next
        current.next = prev
        prev = current
        current = next_node
    end
    prev
end

x = reverse_linked_list(head)
binding.pry




































# def reverse_linked_list(head)
#   prev = nil
#   current = head
#   while !current.nil?
#     next_node = current.next
#     current.next = prev
#     prev = current
#     current = next_node
#   end

#   prev
# end