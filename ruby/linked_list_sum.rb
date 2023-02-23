class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# def linked_list_sum(head)
#   sum = 0 
#   current = head 
#   while !current.nil? do 
#     sum += current.val 
#     current = current.next
#   end
#   sum 
# end

def linked_list_sum(head)
  return 0 if head.nil?
  head.val + linked_list_sum(head.next)
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)
d = Node.new(4)

a.next = b
b.next = c
c.next = d

p linked_list_sum(a)