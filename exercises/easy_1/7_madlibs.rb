# frozen_string_literal: true

def valid_input?(input)
  !input.delete(' ').empty?
end

def display_error
  puts 'Invalid input. Please try again.'
end

def prompt_noun
  loop do
    puts 'Enter a noun:'
    noun = gets.chomp
    return noun if valid_input?(noun)

    display_error
  end
end

def prompt_verb
  loop do
    puts 'Enter a verb:'
    verb = gets.chomp
    return verb if valid_input?(verb)

    display_error
  end
end

def prompt_adjective
  loop do
    puts 'Enter an adjective:'
    adjective = gets.chomp
    return adjective if valid_input?(adjective)

    display_error
  end
end

def prompt_adverb
  loop do
    puts 'Enter an adverb:'
    adverb = gets.chomp
    return adverb if valid_input?(adverb)

    display_error
  end
end

puts "Do you #{prompt_verb} your #{prompt_adjective} #{prompt_noun} #{prompt_adverb}? That's hilarious!"
