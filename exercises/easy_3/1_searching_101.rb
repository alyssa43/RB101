def prompt_numbers
  number_array = []
  turns = %w[1st 2nd 3rd 4th 5th last]

  turns.each_index do |i|
    puts "==> Enter the #{turns[i]} number:"
    number_array << gets.to_i
  end
  number_array
end

def display_message(array, last_number)
  if array.include?(last_number)
    puts "The number #{last_number} appears in #{array}."
  else
    puts "The number #{last_number} does not appear in #{array}."
  end
end

number_array = prompt_numbers
last_number = number_array.pop

display_message(number_array, last_number)
