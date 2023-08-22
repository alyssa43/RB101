puts 'Please write word or multiple words:'
word = gets.chomp

if word.length == 1
  puts "There is 1 character in '#{word}'."
else
  puts "There are #{word.delete(" ").length} characters in '#{word}'."
end

