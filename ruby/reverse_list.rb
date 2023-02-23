class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# def reverse_list(head)
#   current = head 
#   previous = nil 
#   while !current.nil? do 
#     next_node = current.next 
#     current.next = previous 
#     previous = current
#     current = next_node
#   end
#   previous 
# end

def reverse_list(head, previous=nil)
  return previous if head.nil? 
  next_node = head.next
  head.next = previous 
  return reverse_list(next_node, head)
end

a = Node.new("a")
b = Node.new("b")
c = Node.new("c")
d = Node.new("d")

a.next = b
b.next = c
c.next = d

p reverse_list(a).val
p d.next.val