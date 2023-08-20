CURRENT_YEAR = Time.now.year

puts 'What is your age?'
age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retirement_age = gets.chomp.to_i

years_to_go = retirement_age - age
retirement_year = CURRENT_YEAR + years_to_go

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You only have #{years_to_go} years of work to go!"
