class Node:
    def __init__(self, val):
        self.val = val
        self.next = None

# def reverse_list(head):
#   current_node = head 
#   previous_node = None
#   while current_node is not None:
#     next_node = current_node.next
#     current_node.next = previous_node
#     previous_node = current_node
#     current_node = next_node
#   return previous_node

def reverse_list(head, previous_node=None):
  if head is None:
    return previous_node
  next = head.next 
  head.next = previous_node
  return reverse_list(next, head)

a = Node("a")
b = Node("b")
c = Node("c")
d = Node("d")

a.next = b
b.next = c
c.next = d

print(reverse_list(a).val)
print(d.next.val)