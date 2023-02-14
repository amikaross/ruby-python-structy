def uncompress(s)
  numbers = '0123456789'
  result = []
  i = 0
  j = 0
  while j < s.length do 
    if numbers.include?(s[j])
      j += 1
    else
      num = s[i..(j - 1)].to_i
      num.times { result.append(s[j]) }
      j += 1
      i = j
    end
  end

  result.join('')
end
