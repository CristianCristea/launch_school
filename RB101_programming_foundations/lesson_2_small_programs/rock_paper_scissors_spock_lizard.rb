# This game is a variation on the Rock Paper Scissors
# game that adds two more options - Lizard and Spock.

# winning conditions
# scissors > paper > rock > lizard > spock > scissors
# > lizard > paper > spock > rock > scissors
# Update the program so the user can type "r" for "rock," etc.
# Keep score of the player's and computer's wins.
# First to reache five wins

VALID_CHOICES = {
  r: 'rock',
  p: 'paper',
  s: 'scissors',
  l: 'lizard',
  sp: 'spock'
}

WINNING_RULES = {
  rock: %w[lizard scissors],
  paper: %w[rock spock],
  scissors: %w[paper lizard],
  lizard: %w[paper spock],
  spock: %w[scissors rock]
}

def prompt(message)
  puts "=> #{message}"
end

def win?(player_one, player_two)
  WINNING_RULES[player_one.to_sym].include?(player_two)
end

def calculate_winner(user, computer)
  if win?(user, computer)
    'You'
  elsif win?(computer, user)
    'Computer'
  end
end

def display_result(winner)
  case winner
  when 'You'
    prompt('You win!')
  when 'Computer'
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
end

# play again loop
loop do
  prompt('Welcome to Rock(r), Paper(p), Scissors(s), Lizard(l), Spock(sp). First to 5 wins.')
  user_wins = 0
  computer_wins = 0
  user_input = ''

  # first to 5 wins llop
  loop do
    # validate user input
    loop do
      prompt('Your turn to pick...')
      user_input = gets.chomp.downcase
      if VALID_CHOICES.include?(user_input.to_sym)
        break
      else
        prompt('Choose only Rock(r), Paper(p), Scissors(s), Lizard(l), Spock(sp)')
      end
    end

    computer_choice = VALID_CHOICES.values.sample
    user_choice = VALID_CHOICES[user_input.to_sym]
    winner = calculate_winner(user_choice, computer_choice)

    prompt("You picked #{user_choice}, the computer picked #{computer_choice}.")
    display_result(winner)

    # add won game
    if winner == 'You'
      user_wins += 1
    elsif winner == 'Computer'
      computer_wins += 1
    end

    prompt("#{user_wins} - #{computer_wins}")
    break if user_wins == 5 || computer_wins == 5
  end

  prompt("You #{user_wins} : #{computer_wins} Computer")
  prompt('Press y for another round.')
  play_again = gets.chomp

  break if !play_again.downcase.casecmp('y').zero?
end

prompt('Bye Bye!!!')
