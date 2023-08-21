def generate_number
	rand(2..200)
end

def prompt_name
  puts "Please enter your name:"
  name = gets.chomp
  name.empty? ? "Teddy" : name
end

puts "#{prompt_name} is #{generate_number} years old!"
