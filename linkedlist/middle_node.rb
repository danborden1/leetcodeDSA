def middle_node(head)
    node_count = 0.0
    counting_node = head
    while !counting_node.next.nil? do
        node_count += 1
        counting_node = counting_node.next
    end
    
    middle_node_number = (node_count / 2.0).ceil
    counting_node = head
    count = 0
    while count < middle_node_number do
        counting_node = counting_node.next
        count += 1
    end
    counting_node
end



# Given the head of a singly linked list, return the middle node of the linked list.

# If there are two middle nodes, return the second middle node.

 

# Example 1:

# Input: head = [1,2,3,4,5]
# Output: [3,4,5]
# Explanation: The middle node of the list is node 3.

# Example 2:

# Input: head = [1,2,3,4,5,6]
# Output: [4,5,6]
# Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.

 

# Constraints:

#     The number of nodes in the list is in the range [1, 100].
#     1 <= Node.val <= 100

