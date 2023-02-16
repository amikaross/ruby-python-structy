def five_sort(nums)
  i = 0
  j = nums.length - 1
  while i < j do
    if nums[j] == 5
      j -= 1
    elsif nums[i] == 5
      nums[i], nums[j] = [nums[j], nums[i]]
      i += 1
    else
      i += 1
    end
  end

  nums
end

puts five_sort([5, 2, 5, 6, 5, 1, 10, 2, 5, 5])