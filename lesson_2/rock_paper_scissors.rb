# frozen_string_literal: true

require 'abbrev'

WINNING_SCORE = 3

VALID_CHOICES = %w[rock paper scissors lizard spock].abbrev

MOVES = {
  'rock' => %w[lizard scissors],
  'paper' => %w[rock spock],
  'scissors' => %w[paper lizard],
  'lizard' => %w[paper spock],
  'spock' => %w[rock scissors]
}.freeze

def clear_screen
  Gem.win_platform? ? (system 'cls') : (system 'clear')
end

def valid_move?(move)
  VALID_CHOICES.include?(move)
end

def prompt(message)
  puts "=> #{message}"
end

def display_invalid_input
  prompt('Invalid choice. Please try again.')
end

def display_scissors_or_spock
  # rubocop:disable Layout/LineLength
  prompt('Invalid choice. Please either put "sc" for scissors; or "sp" for spock')
  # rubocop:enable Layout/LineLength
end

def welcome_user
  clear_screen
  # rubocop:disable Layout/LineLength
  puts "Welcome! Let's play Rock, Paper, Scissors, Lizard, Spock \nThe first player to 3 will win! \n "
  # rubocop:enable Layout/LineLength
end

def computer_choice
  MOVES.keys.sample
end

def prompt_user_choice
  user_choice = ''
  loop do
    prompt("Choose one: #{MOVES.keys.join(', ')}")
    prompt('("r", "p", "sc", "l", or "sp")')
    user_choice = gets.chomp.downcase

    break if valid_move?(user_choice)

    user_choice == 's' ? display_scissors_or_spock : display_invalid_input
  end
  VALID_CHOICES[user_choice]
end

def display_results(players_move, computers_move)
  # rubocop:disable Layout/LineLength
  puts "You chose: #{players_move.capitalize}  |  The computer chose: #{computers_move.capitalize} \n "
  # rubocop:enable Layout/LineLength

  if players_move == computers_move
    prompt("It's a tie!")
  elsif MOVES[VALID_CHOICES[players_move]].include?(computers_move)
    prompt('You win!')
  else
    prompt('Computer wins!')
  end
end

def update_scores(players_move, computers_move, players_score, computers_score)
  if players_move == computers_move
  # do nothing
  elsif MOVES[VALID_CHOICES[players_move]].include?(computers_move)
    players_score += 1
  else
    computers_score += 1
  end

  [players_score, computers_score]
end

def display_score(players_score, computers_score)
  prompt("You have: #{players_score}  |  Computer has: #{computers_score} \n ")
end

def game_over(players_score, computers_score)
  # rubocop:disable Layout/LineLength
  puts "\n GAME OVER. THE FINAL SCORE IS: \n You: #{players_score}  |  Computer: #{computers_score} \n "
  # rubocop:enable Layout/LineLength
end

def play_again?
  prompt('Do you want to play again?')
  gets.chomp.downcase.start_with?('y')
end

def display_goodbye
  puts "\nThank you for playing. Goodbye!"
end

loop do
  welcome_user

  players_score = 0
  computers_score = 0

  loop do
    players_move = prompt_user_choice
    computers_move = computer_choice

    # rubocop:disable Layout/LineLength
    players_score, computers_score = update_scores(players_move,
                                                   computers_move, players_score, computers_score)
    # rubocop:enable Layout/LineLength

    clear_screen

    display_results(players_move, computers_move)
    display_score(players_score, computers_score)

    break if players_score == WINNING_SCORE || computers_score == WINNING_SCORE
  end

  game_over(players_score, computers_score)

  break unless play_again?
end

display_goodbye
