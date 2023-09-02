def factors(number)
  divisor = number
  factors = []
  
  loop do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
    break if divisor == 0
  end
  factors
end

=begin
I fixed this loop by breaking when the divisor == 0, that way the loop will not throw a ZeroDivisionError or
having an infinite loop.

Bonus 1: What is the purpose of the number % divisor == 0 ?
=> The purpose of that code is to see if when the number is divided by the divisor, there is no remainder.
Meaning it is a whole number (integer).

Bonus 2: What is the purpose of the second-to-last line(the "factors" before the method's "end")?
=> The purpose of calling factors at the very end of the method is so that the factors array will be the
returned value when calling the factors() method.
=end
