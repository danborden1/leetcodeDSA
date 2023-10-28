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
  while !node.nil?
        nodeval = node.val
        nextnode = node.next
        while !nextnode.nil? && nextnode.val == nodeval
            nextnode = nextnode.next
        end
        node.next = nextnode
        node = nextnode
    end
    head
end


first = ListNode.new(1)
second = ListNode.new(1)
third = ListNode.new(1)
# fourth = ListNode.new(3)
# fifth = ListNode.new(3)

first.next = second
second.next = third
# third.next = fourth
# fourth.next = fifth
head = first


x = delete_duplicates(head)
