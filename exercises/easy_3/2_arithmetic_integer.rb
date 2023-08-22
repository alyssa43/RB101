def display(msg)
  puts "==> #{msg}"
end

def prompt_numbers
  display('Enter the first number:')
  first = gets.to_i
  
  display('Enter the second number:')
  second = gets.to_i
  
  [first] + [second]
end

def perform_calculations(numbers)
  display("#{numbers[0]} + #{numbers[1]} = #{numbers[0] + numbers[1]}")
  display("#{numbers[0]} - #{numbers[1]} = #{numbers[0] - numbers[1]}")
  display("#{numbers[0]} * #{numbers[1]} = #{numbers[0] * numbers[1]}")
  display("#{numbers[0]} / #{numbers[1]} = #{numbers[0] / numbers[1]}")
  display("#{numbers[0]} % #{numbers[1]} = #{numbers[0] % numbers[1]}")
  display("#{numbers[0]} ** #{numbers[1]} = #{numbers[0] ** numbers[1]}")
end


perform_calculations(prompt_numbers)
