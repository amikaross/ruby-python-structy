class Node:
    def __init__(self, val):
        self.val = val
        self.next = None

# def linked_list_values(head):
#     arr = []
#     current_node = head
#     while current_node is not None:
#         arr.append(current_node.val)
#         current_node = current_node.next
#     return arr

def linked_list_values(head):
    arr = []
    fill_values(head, arr)
    return arr

def fill_values(head, arr):
    if head is None:
        return
    arr.append(head.val)
    fill_values(head.next, arr)


a = Node("a")
b = Node("b")
c = Node("c")
d = Node("d")

a.next = b
b.next = c
c.next = d

print(linked_list_values(a))