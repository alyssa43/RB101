=begin
Every object in Ruby has access to a method called object_id, which returns a numerical
value that uniquely identifies the object. This method can be used to determine whether
two variables are pointing to the same object.

Take a look at the following code and predict the output:
=end
a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin
The output will be the same object id for a and c, because they are both pointing to the
same object. b will be a different object id because, although the value is the same as
a and c, it is pointing at a different object.
=end
