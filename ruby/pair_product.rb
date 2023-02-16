def pair_product(numbers, target)
  previous = {}
  numbers.each_with_index do |num, i|
    complement = target / num
    if previous[complement] 
      return [i, previous[complement]]
    else
      previous[num] = i
    end
  end
end