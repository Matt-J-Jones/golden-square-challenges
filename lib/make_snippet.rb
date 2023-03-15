# File: lib/make_snippet.rb

def make_snippet(str)
  temp = str.split(" ")

  if temp.length <= 5
    return str
  else
    return temp[0..4].join(" ")+"..."
  end
end