require 'yaml'
MESSAGES = YAML.load_file('loan_calc_messages.yml')
MONTHS_IN_YEAR = 12

def valid_number?(num)
  ((num.to_f.to_s == num) || (num.to_i.to_s == num)) && num.to_f > 0.0
end

def apr_to_mpr(apr)
  (apr.to_f / MONTHS_IN_YEAR) / 100
end

def years_to_months(years)
  years.to_f * MONTHS_IN_YEAR
end

def monthly_payment(loan, int, dur)
  (loan * (int / (1 - ((1 + int)**(-dur))))).round(2)
end

name = ''
puts MESSAGES['welcome']

loop do # name loop
  name = gets.chomp.capitalize

  if name.delete(" ").empty?
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

  payment = monthly_payment(loan_amount.to_f, apr_to_mpr(apr),
                            years_to_months(loan_duration))

  puts "#{name}, #{MESSAGES['payment_display']} #{format('$%.2f', payment)}"
  puts MESSAGES['go_again']
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

puts "#{MESSAGES['thank_you']} #{MESSAGES['goodbye']}, #{name}!"
