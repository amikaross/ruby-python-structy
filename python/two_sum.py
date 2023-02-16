def two_sum(numbers, target_sum):
  previous = {}
  for i in range(len(numbers)):
    complement = target_sum - numbers[i] 
    if complement in previous:
      return (previous[complement], i)
    else:
      previous[numbers[i]] = i 