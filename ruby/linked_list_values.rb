class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# def linked_list_values(head)
#   arr = []
#   current_node = head
#   while !current_node.nil? do 
#     arr.append(current_node.val)
#     current_node = current_node.next
#   end
#   arr
# end

def linked_list_values(head)
  arr = []
  fill_values(head, arr)
  arr
end

def fill_values(head, arr)
  return if head.nil?
  arr.append(head.val)
  fill_values(head.next, arr)
end

a = Node.new("a")
b = Node.new("b")
c = Node.new("c")
d = Node.new("d")

a.next = b
b.next = c
c.next = d

p linked_list_values(a)