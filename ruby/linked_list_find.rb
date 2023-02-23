class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# def linked_list_find(head, target)
#   current = head
#   while !current.nil? do 
#     return true if current.val == target
#     current = current.next
#   end
#   false
# end

def linked_list_find(head, target)
  return false if head.nil?
  return true if head.val == target 
  return linked_list_find(head.next, target)
end

a = Node.new("a")
b = Node.new("b")
c = Node.new("c")
d = Node.new("d")

a.next = b
b.next = c
c.next = d

p linked_list_find(a, "b")