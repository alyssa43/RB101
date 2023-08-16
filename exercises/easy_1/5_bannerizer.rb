def print_in_box(str)
  top_and_bottom = "+-" + ("-" * str.length) + "-+"
  empty_line = "| " + (" " * str.length) + " |"
  middle_line = "| " + str + " |"
  
  puts top_and_bottom
  puts empty_line
  puts middle_line
  puts empty_line
  puts top_and_bottom
end

print_in_box('hello')
print_in_box('')
print_in_box('To boldly go where no one has gone before.')
