def shouting?(name)
  name.end_with?("!")
end

puts 'What is your name?'
name = gets.chomp

if shouting?(name)
  puts "HELLO #{name.delete("!").upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end
