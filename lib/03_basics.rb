def who_is_bigger(a, b ,c)
  if a == nil || b == nil || c == nil
    return "nil detected"
  end
  
  bigger = a
  biggerstr = "a"
  
  if b > a
    bigger = b
    biggerstr = "b"
  end
  
  if c > bigger
    bigger = c
    biggerstr = "c"
  end
  
  return biggerstr + " is bigger"
end

def reverse_upcase_noLTA(str)
  result = ""
  str.reverse.upcase.each_char { |letter| result << letter if !("LTA".include? letter)}
  
  return result
end

def array_42(array)
  return array.include? 42
end

def magic_array(array)
  result = []
  array.flatten.sort.uniq.each { |v| result << v*2 if (v % 3 > 0) }
  
  return result
end
