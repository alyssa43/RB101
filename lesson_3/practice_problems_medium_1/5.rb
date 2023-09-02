=begin
Ben coded up this implementation but complained that as soon as he ran it, he got an error.
Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

How would you fix this so that it works?
The limit variable was initialized outside of the method, and not passed into the method as
an argument so the fib() method has no access to it. You can fix this by passing it into
the fib() method as an argument, and then when calling the fib() method to call it with
the limit variable, like so:
=end

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"


