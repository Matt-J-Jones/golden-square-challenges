# File: lib/grammar_check.rb

def grammar_check(string)
  if check_capitals(string) == true && check_punctuation(string) == true
    return true
  else
    return false
  end
end

def check_capitals(string)
  temp = string.capitalize
  if temp == string 
    return true
  else
    return false
  end
end

def check_punctuation(string)
  punct = ".?!"
  if punct.include?(string[string.length-1])
    return true
  else
    return false
  end
end