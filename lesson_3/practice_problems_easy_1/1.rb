# What would you expect the code below to print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

=begin
The code will print:
1
2
2
3

This is because when numbers is called with #uniq it returns a new
array with only unique elements, but it did not mutate the numbers array.
So when numbers is called with puts it prints each element of the numbers
array on a new line.
=end
