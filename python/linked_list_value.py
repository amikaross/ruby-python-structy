# class Node:
#   def __init__(self, val):
#     self.val = val
#     self.next = None

# def get_node_value(head, index):
#   counter = 0 
#   current = head
#   while current is not None:
#     if counter == index:
#       return current.val 
#     current = current.next
#     counter += 1
#   return None

def get_node_value(head, index):
  if head is None:
    return None
  if index == 0:
    return head.val
  
  return get_node_value(head.next, index - 1)