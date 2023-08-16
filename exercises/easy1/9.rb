def center_of(str)
  str.length.odd? ? str[str.length / 2] : str[(str.length / 2) - 1, 2]
end

=begin
Or, broken down a bit for better readability...

def center_of(str)
  length = str.length
  middle = length / 2
  length.odd? ? str[middle] : str[middle - 1, 2]
end

=end