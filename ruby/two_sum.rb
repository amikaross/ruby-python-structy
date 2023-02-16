def two_sum(numbers, target)
  previous = {}
  numbers.each_with_index do |num, i|
    complement = target - num 
    if previous[complement]
      return [previous[complement], i]
    else
      previous[num] = i 
    end
  end
end

