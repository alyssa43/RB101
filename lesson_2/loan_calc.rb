require 'yaml'
MESSAGES = YAML.load_file('loan_calc_messages.yml')
MONTHS_IN_YEAR = 12

def valid_number?(num)
  ((num.to_f.to_s == num) || (num.to_i.to_s == num))
end

def valid_name?(name)
	!name.delete(" ").empty?
end

def greater_than_or_equal_to_zero?(num)
	num.to_f >= 0.0
end

def greater_than_zero?(num)
	num.to_f > 0.0
end

def apr_to_mpr(apr)
  (apr / MONTHS_IN_YEAR) / 100
end

def years_to_months(years)
  years * MONTHS_IN_YEAR
end

def monthly_payment(loan_amount, monthly_interest, loan_duration)
  (loan_amount * (monthly_interest / (1 - ((1 + monthly_interest)**(-loan_duration))))).round(2)
end

def prompt_user_name
	name = ''
	loop do
		name = gets.chomp.capitalize
	
		break if valid_name?(name)
			
		puts MESSAGES['valid_name'] + "\n"
	end
	name
end

def prompt_loan_amount
	loan_amount = ''
  loop do 
    puts MESSAGES['input_loan'] + "\n"
    loan_amount = gets.chomp.delete_prefix("$").delete_suffix(".00").delete(",")

    break if (valid_number?(loan_amount)) && (greater_than_zero?(loan_amount))

    puts MESSAGES['valid_number'] + "\n"
  end
	loan_amount
end

def prompt_apr_amount
	apr = ''
  loop do 
    puts MESSAGES['input_apr'] + "\n"
    apr = gets.chomp.delete("%").delete_suffix(".0").delete_suffix(".00")

    break if (valid_number?(apr)) && (greater_than_or_equal_to_zero?(apr))

    puts MESSAGES['valid_number'] + "\n"
  end
	apr
end

def prompt_loan_duration
	loan_duration = ''
  loop do 
    puts MESSAGES['input_duration'] + "\n"
    loan_duration = gets.chomp

    break if valid_number?(loan_duration) && (greater_than_zero?(loan_duration))

    puts MESSAGES['valid_number'] + "\n"
  end
	loan_duration
end


puts MESSAGES['welcome'] + "\n"
puts MESSAGES['begin'] + "\n"
puts MESSAGES['input_name'] + "\n"

user_name = prompt_user_name

puts "#{MESSAGES['greet']}, #{user_name}!" + "\n"

loop do # main loop

  loan_amount = (prompt_loan_amount).to_f
	apr = (prompt_apr_amount).to_f
	loan_duration_years = (prompt_loan_duration).to_f

  monthly_interest = apr_to_mpr(apr)
	loan_duration_months = years_to_months(loan_duration_years)
  payment_amount = monthly_payment(loan_amount, monthly_interest,
                            loan_duration_months)

	puts "#{user_name}, #{MESSAGES['loan_summary']} #{format('$%.2f', loan_amount)}," + "\n"
	puts "#{MESSAGES['apr_summary']} #{apr}%, #{MESSAGES['duration_summary']} #{loan_duration_years} #{MESSAGES['years']};" + "\n"
	puts "#{MESSAGES['payment_display']} #{format('$%.2f', payment_amount)}." "\n"

  puts MESSAGES['go_again'] + "\n"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

puts "#{MESSAGES['thank_you']} #{MESSAGES['goodbye']}, #{user_name}!" + "\n"
