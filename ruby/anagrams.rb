def anagrams(s1, s2)
  counter(s1) == counter(s2)
end

def counter(str)
  str.split('').each_with_object({}) do |char, counter|
    counter[char] ? counter[char] += 1 : counter[char] = 1
  end
end

puts anagrams('restful', 'fluster')