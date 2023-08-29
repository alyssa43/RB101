def palindrome?(string)
  string = string.reverse
end

def real_palindrome?(string)
  string.downcase.delete(",")
