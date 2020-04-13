def translate(word)
  if word.include? " "
    result = []
    word.split.each do |trueword|
      result << translate(trueword)
    end
    
    return result.join(" ")
  end
    
  first_vowel_index = -1
  index = 0
  
  while first_vowel_index < 0 && index < word.size
    if "aeiouy".include? word[index].downcase
      first_vowel_index = index
    else
      index += 1
    end
  end
  
  if first_vowel_index <= 0
    translation = word + "ay"
  else
    # le sch est deja un bloc de consonnes +> osef
    
    if word[first_vowel_index-1..first_vowel_index] == "qu"
      first_vowel_index += 1 # le u suit le q
    end
    
    translation = word[first_vowel_index .. word.size] + word[0, first_vowel_index] + "ay"
  end
  
  return translation
end
