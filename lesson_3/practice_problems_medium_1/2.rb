# The result of the following statement will be an error"
puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# This code will cause a TypeError because Ruby cannot implicitly convert the integer into a string.

# You could fix this by using string interpolation like so:
puts "the value of 40 + 2 is #{40 + 2}"

# Or you could explicitly convert the integer to a string by calling Integer#to_s on the integer, like so:
puts "the value of 40 + 2 is " + (40 + 2).to_s
