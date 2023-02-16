require 'set'

def intersection(a, b)
  set = Set.new(a)

  b.each_with_object([]) do |e, result|
    if set.include?(e)
      result << e 
    end
  end
end