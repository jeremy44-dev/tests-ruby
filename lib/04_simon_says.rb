def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, nb=2)
  result = []
  nb.times do 
    result << str
  end
  
  return result.join(" ")
end

def start_of_word(str, nb=1)
  return str[0..nb-1]
end

def first_word(str)
  return str.split[0]
end

def titleize(str)
  result = []
  str.split.each_with_index do |word, i|
    if i == 0 || word.size > 3
      result << word.capitalize
    else
      result << word
    end
  end
  
  return result.join(" ")
end
