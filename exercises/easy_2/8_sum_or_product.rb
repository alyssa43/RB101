# frozen_string_literal: true

def valid_number?(int)
  int.integer? && int.positive?
end

def valid_operation?(character)
  (character == 's') || (character == 'p')
end

def prompt_integer
  integer = 0
  loop do
    puts 'Please enter an integer greater than 0:'
    integer = gets.chomp.to_i
    break if valid_number?(integer)

    puts 'Error, invalid integer. Please try again'
  end
  integer
end

def prompt_calculation
  operation = ''
  loop do
    puts "Enter 's' to compute the sum, 'p' to compute the product"
    operation = gets.chomp.downcase
    break if valid_operation?(operation)

    puts 'Error, invalid input. Please try agagin.'
  end
  operation
end

def calculate_sum(array)
  array.sum
end

def calculate_product(array)
  array.inject(:*)
end

integer_array = (1..prompt_integer).to_a
operation = prompt_calculation

if operation == 's'
  puts "The sum of the integers between 1 and #{integer_array[-1]} is #{calculate_sum(integer_array)}."
else
  puts "The product of the integers between 1 and #{integer_array[-1]} is #{calculate_product(integer_array)}."
end
