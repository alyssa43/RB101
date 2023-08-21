SQ_METER_TO_SQ_FEET = 10.7639
SQ_FEET_TO_SQ_INCHES = 144.0
SQ_FEET_TO_SQ_CENTIMETERS = 929.03

def calc_sq_meters(length, width)
  (length * width).round(2)
end

def sq_meters_to_sq_feet(sq_meters)
  (sq_meters * SQ_METER_TO_SQ_FEET).round(2)
end

def prompt_length
  puts 'Enter the length of the room in meters:'
  gets.chomp.to_f
end

def prompt_width
  puts 'Enter the width of the room in meters:'
  gets.chomp.to_f
end

square_meters = calc_sq_meters(prompt_length, prompt_width)
square_feet = sq_meters_to_sq_feet(square_meters)

puts 'The area of the room is:'
puts "#{square_meters} square meters."
puts "#{square_feet} square feet."

# Further Exploration

def sq_feet_to_sq_inches(sq_feet)
  (sq_feet * SQ_FEET_TO_SQ_INCHES).round(2)
end

def sq_feet_to_sq_centimeters(sq_feet)
  (sq_feet * SQ_FEET_TO_SQ_CENTIMETERS).round(2)
end

def calc_sq_feet(length, width)
  (length * width).round(2)
end

def prompt_length
  puts 'Enter the length of the room in feet:'
  gets.chomp.to_f
end

def prompt_width
  puts 'Enter the width of the room in feet:'
  gets.chomp.to_f
end

square_feet = calc_sq_feet(prompt_length, prompt_width)
square_inches = sq_feet_to_sq_inches(square_feet)
square_centimeters = sq_feet_to_sq_centimeters(square_feet)

puts 'The area of the room is:'
puts "#{square_feet} square feet."
puts "#{square_inches} square inches."
puts "#{square_centimeters} square centimeters."