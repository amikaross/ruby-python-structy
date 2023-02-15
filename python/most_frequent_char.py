def most_frequent_char(s):
  count = {}
  for char in s:
    if char not in count:
      count[char] = 0
    count[char] += 1
    
  most_frequent = s[0]
  for char in s:
    if count[char] > count[most_frequent]:
      most_frequent = char
  return most_frequent