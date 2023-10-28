require 'pry'


class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

## first pass
def reverse_between(head, left, right)
    length = list_length(head)
    nodehash = {}
    node = head
    (1..length).each do |num|
      nodehash[num] = node
      node = node.next
    end
    nodehash
    map = (1..length).to_a
    map = reorder_array(map, left, right)
    map.each_with_index do |pos, index|
      node = nodehash[pos]
      node.next = nodehash[map[index + 1]]
    end
    head = nodehash[map.first]
end

def list_length(head)
  count = 0
  node = head
  while !node.nil?
    count += 1
    node = node.next
  end
  count
end

def reorder_array(map, left, right)
  first = left == 1 ? nil : map[0..(left - 2)]
  middle = left.nil? ? map[0..(right - 1)] : map[(left - 1)..(right - 1)]
  last = map[(right)..-1]
  [first, middle.reverse, last].flatten.compact
end



# first = ListNode.new(1)
# second = ListNode.new(2)
# third = ListNode.new(3)
# fourth = ListNode.new(4)
# fifth = ListNode.new(5)

# first.next = second
# second.next = third
# third.next = fourth
# fourth.next = fifth
# head = first

first = ListNode.new(3)
second = ListNode.new(5)
first.next = second
head = first



x = reverse_between(head, 1, 2)
binding.pry