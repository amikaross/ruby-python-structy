def compress(s)
  s.concat('0')
  result = []
  i = 0
  j = 0
  while j < s.length do 
    if s[j] != s[i]
      count = j - i
      count == 1 ? result.append(s[i]) : result.append(count.to_s + s[i])
      i = j
    else 
      j += 1
    end
  end

  result.join('')
end