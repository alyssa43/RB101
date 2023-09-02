# Let's take a look at another example with a small difference in the code:
a = 42
b = 42
c = a

puts a.object_id # 85
puts b.object_id # 85
puts c.object_id # 85

=begin
In this example, all three variables point to the same object id of 85, because in Ruby
all integers have a fixed identity. Meaning that anything with the value of 42 will
have an object id of 85.
