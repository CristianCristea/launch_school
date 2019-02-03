# constants
SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
MAX_VALUE = 21
DEALER_MAX = 17

# display
def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  #[['H', 3], ['S', 'Q'],...]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0 # J Q K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > MAX_VALUE
  end

  sum
end

def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > MAX_VALUE
    :player_busted
  elsif dealer_total > MAX_VALUE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt 'You busted! Dealer wins!'
  when :dealer_busted
    prompt 'Dealer busted! You win!'
  when :player
    prompt 'You win!'
  when :dealer
    prompt 'Dealer wins!'
  when :tie
    prompt "It's a tie!"
  end
end

def busted?(total)
  total > MAX_VALUE
end

def play_again?
  puts '-------------'
  prompt "Do you want to play again?"
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

loop do
  prompt "Welcome to Twenty-One!"

  # initialieze vars
  deck = initialize_deck
  player_cards = []
  dealer_cards = []
  player_total = 0
  dealer_total = 0

  # initialize deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have #{player_cards[0]} and #{player_cards[1]}, for a total of #{player_total}."

  # player turn
  loop do
    player_turn = nil

    loop do
      prompt 'Would you like to hit(h) or stay(s)?'
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h', or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      player_total = total(player_cards)
      prompt 'You chose to hit!'
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{player_total}"
    end

    break if player_turn == 's' || busted?(player_total)
  end

    if busted?(player_total)
      display_result(dealer_cards, player_cards)
      play_again? ? next: break
    else
      prompt "You stayed at #{player_total}"
    end

    # dealer turn
    loop do
      break if dealer_total > DEALER_MAX
      prompt 'Dealer hits!'
      dealer_cards << deck.pop
      dealer_total = total(dealer_cards)
      prompt "Dealer's cards are now: #{dealer_cards}"
    end

    if busted?(dealer_total)
      prompt "Dealer total is now: #{total(dealer_cards)}"
      display_result(dealer_cards, player_cards)
      play_again? ? next : break
    else
      prompt("Dealer stays at #{dealer_total}")
    end

    # both palyer and dealer stays -compare cards!
    puts"===================="
    prompt "Dealer has #{dealer_cards}, for a total of #{dealer_total}"
    prompt "Player has #{player_cards}, for a total of #{player_total}"

    display_result(dealer_cards, player_cards)

    break unless play_again?
end