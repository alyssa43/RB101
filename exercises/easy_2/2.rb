SQ_METER_TO_SQ_FEET = 10.7639
SQ_FEET_TO_SQ_INCHES = 12

def sq_meters_to_sq_feet(sq_meters)
  (sq_meters * SQ_METER_TO_SQ_FEET).round(2)
end

def calc_sq_meters(length, width)
  (length * width).round(2)
end

def prompt_length
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f.round
end

def prompt_width
  puts "Enter the width of the room in meters:"
  length = gets.chomp.to_f.round
 end

square_meters = calc_sq_meters(prompt_length, prompt_width)
square_feet = sq_meters_to_sq_feet(square_meters)

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."

# Further Exploration


