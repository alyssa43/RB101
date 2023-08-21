=begin
What does this print out? Can you explain these results?
  name = 'Bob'
  save_name = name
  name.upcase!
  puts name, save_name

This will print 'BOB' 'BOB' because when the "name" variable is called with ".upcase!" it mutates the caller (name), which then also changes the value of the "save_name" variable.
