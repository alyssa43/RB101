def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power_to_the_nth(num, power)
  multiply(num, 1) ** power
end

puts square(5) == 25
puts square(-8) == 64

puts power_to_the_nth(2, 4) == 16
puts power_to_the_nth(8, 3) == 512
 
