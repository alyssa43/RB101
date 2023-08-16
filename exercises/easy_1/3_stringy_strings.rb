# frozen_string_literal: true

def stringy(num)
  newnum = []
  while num.positive?
    newnum << [1]
    num -= 1
    break if num.zero?

    newnum << [0]
    num -= 1
  end
  newnum.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
