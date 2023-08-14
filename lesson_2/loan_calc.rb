require 'yaml'
MESSAGES = YAML.load_file('loan_calc_messages.yml')

def valid_number?(num)
	(num.to_f.to_s == num) || (num.to_i.to_s == num)
end

def monthly_payment(loan, int, dur)
	(loan * (int / (1 - (1 + int)**(-dur)))).round(2)
end

name = ''
puts MESSAGES['welcome']

loop do # name loop
	name = gets.chomp.capitalize

	if name.empty?
		puts MESSAGES['valid_name']
	else 	
		break
	end
end

puts "#{MESSAGES['greet']}, #{name}!"

loop do # main loop

	loan_amount = ''
	loop do # loan amount loop
		puts MESSAGES['input_loan']
		loan_amount = gets.chomp.delete_prefix("$").delete_suffix(".00").delete(",")

		break if valid_number?(loan_amount)

		puts MESSAGES['valid_number']
	end

	apr = ''
	loop do # apr loop
		puts MESSAGES['input_apr']
		apr = gets.chomp.delete("%").delete_suffix(".0").delete_suffix(".00")

		break if valid_number?(apr)

		puts MESSAGES['valid_number']
	end

	loan_duration = ''
	loop do # loan duration loop
		puts MESSAGES['input_duration']
		loan_duration = gets.chomp

		break if valid_number?(loan_duration)

		puts MESSAGES['valid_number']
	end

	monthly_int = (apr.to_f / 12) / 100  # Converting APR to monthly interest rate, and from string to float
	loan_duration = loan_duration.to_f * 12 # Converting years to months, and from string to float
	loan_amount = loan_amount.to_f # Converting string to float
	payment = monthly_payment(loan_amount, monthly_int, loan_duration) # Saving monthly payment amount to a variable

	puts "#{name}, #{MESSAGES['payment_display']} #{format("$%.2f", payment)}"
	puts "#{MESSAGES['go_again']}" 
	puts "#{MESSAGES['yes_or_no']}"
	answer = gets.chomp.downcase
	puts answer[0]
	break if answer[0] == 'n'
end

puts "#{MESSAGES['thank_you']} #{name}. #{MESSAGES['goodbye']}"
