# File: lib/todo_check.rb

def check_todo(string)
  if string.include?("#TODO")
    return true
  else
    return false
  end
end