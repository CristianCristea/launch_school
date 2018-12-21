# In this assignment, we'll build a Rock Paper Scissors game.
# The game flow should go like this:

# the user makes a choice
# the computer makes a choice
# the winner is displayed

# input - string (rock, paper, scissors)
# output - string (display both choices and winner)

# winning rules
# rock > scissors, paper > rock, scissors > paper

# algorithm
# store valid choices
# get user input - validate
# get computer input
# compare
# display results
# option to play again

VALID_CHOICES = %w[rock paper scissors]

def prompt(message)
  puts "=> #{message}"
end

def win?(player_one, player_two)
  (player_one == 'rock' && player_two == 'scissors') ||
    (player_one == 'paper' && player_two == 'rock') ||
    (player_one == 'scissors' && player_two == 'paper')
end

def display_result(user, computer)
  winner = ''
  if win?(user, computer)
    winner = user
  elsif win?(computer)
    winner = computer
  else
    winner = 'nobody'
  end

  prompt("You picked #{user}, the computer picked #{computer}. #{winner} wins.")
end

loop do
  prompt('Welcome to Rock, Paper, Scissors')

  user_input = ''
  loop do
    prompt('Please pick rock, paper or scissors')
    user_input = gets.chomp.downcase
    VALID_CHOICES.include?(user_input) ? break : prompt('Invalid choice. Only rock, paper, sissors')
  end
  computer_input = VALID_CHOICES.sample
  display_result(user_input, computer_input)

  prompt('Play again? y/n')
  play_again = gets.chomp
  break if play_again.downcase != 'y'
end

prompt('Bye!')
