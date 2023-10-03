require 'pry'
# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    first = list1
    second = list2
    newlist = nil

end

l1n1 = ListNode.new(1)
l1n2 = ListNode.new(2)
l1n3 = ListNode.new(3)
l2n1 = ListNode.new(1)
l2n2 = ListNode.new(3)
l2n3 = ListNode.new(4)

l1n1.next = l1n2
l1n2.next = l1n3
list1 = l1n1

l2n1.next = l2n2
l2n2.next = l2n3
list2 = l2n1

merge_two_lists(list1, list2)