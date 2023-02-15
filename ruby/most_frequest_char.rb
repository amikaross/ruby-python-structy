def most_frequent_char(s)
  count = {}
  s.split('').each do |char|
    count[char] ? count[char] += 1 : count[char] = 1
  end

  most_frequent = s[0]
  s.split('').each do |char|
    if count[char] > count[most_frequent]
      most_frequent = char
    end
  end
  most_frequent
end

