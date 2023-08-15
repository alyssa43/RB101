def triangle(num)
  (1..num).each do |i|
    spaces = ' ' * (num - i)
    stars = '*' * i
    puts spaces + stars
  end
end

def reversed_triangle(num)
  (1..num).reverse_each do |i|
    stars = '*' * i
    spaces = ' ' * (num - i)
    puts spaces + stars
  end
end

triangle(5)
triangle(9)
reversed_triangle(5)
reversed_triangle(9)
