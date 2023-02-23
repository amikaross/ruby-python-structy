class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# def linked_list_value(head, index)
#   counter = 0
#   current = head 
#   while !current.nil? do 
#     return current.val if counter == index
#     counter += 1
#     current = current.next 
#   end
#   nil
# end

def linked_list_value(head, index)
  return nil if head.nil?
  return head.val if index == 0
  return linked_list_value(head.next, index - 1)
end

a = Node.new("a")
b = Node.new("b")
c = Node.new("c")
d = Node.new("d")

a.next = b
b.next = c
c.next = d

p linked_list_value(a, 2)