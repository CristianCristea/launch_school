# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

require 'pry'

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  deck = []
  ['H', 'D', 'C', 'S'].each do |suite|
    cards.each { |card| deck << [card, suite] }
  end

  deck.shuffle!
end
# hold players cards
player_cards = []
dealer_cards = []

def deal(own_cards, deck)
  own_cards << deck.slice!(deck.index(deck.sample))
end

def player_busted?(cards)
  calculate_sum(cards) > 21
end

# return the ace value
def set_ace(cards)
  calculate_sum(cards) < 11 ? 11 : 1
end

def calculate_sum(cards)
  big_cards = ['J', 'Q', 'K']
  cards_values = cards.map { |card| card[0] }
  sum = 0
  cards_values.each do |value|
    if big_cards.include?(value)
      sum += 10
    elsif value == 'A' && sum < 11
      sum += 11
    elsif value == 'A' && sum >= 11
      sum += 1
    else
      sum += value
    end
  end

  sum
end

def display_suite(card)
  case card[1]
  when 'H' then 'Hearts'
  when 'S' then 'Spades'
  when 'C' then 'Clubs'
  else 'Diamonds'
  end
end

def display_initial_dealer(cards)
  prompt("Dealer has #{cards[0][0]} of #{display_suite(cards[0])} and unknown card")
end

def display_cards(player, cards)
  string = "#{player.capitalize} has "
  cards.each do |card|
    string += "#{card[0]} of #{display_suite(card)}, "
  end

  prompt(string)
end

deck = initialize_deck

# 2 loops, one for player, one for computer
# loop
# ask player
# deal or stay
# if deal add card to human
# unless busted go to 2
# break if stay or busted
# end

def detect_winner(player_cards, dealer_cards)
  player = calculate_sum(player_cards)
  dealer = calculate_sum(dealer_cards)

  if player == 21
    prompt("Blackjack!!! Player won!")
  elsif dealer == 21
    prompt("Blackjack!!! Dealer won!")
  elsif player > dealer
    prompt("Player won!")
  elsif dealer > player
    prompt("Dealer won!")
  else
    prompt("It's a tie.")
  end
end

2.times do
  deal(player_cards, deck)
  deal(dealer_cards, deck)
end
  display_initial_dealer(dealer_cards)
  display_cards('player', player_cards)

loop do
  prompt("Do you want to hit(h) or stay(s)?")
  player_answer = gets.chomp.downcase
  if player_answer == 'h'
    deal(player_cards, deck)
    display_cards('player', player_cards)
  end

  break if player_answer == 's' || player_busted?(player_cards)
end

prompt("Player busted, Dealer won!") if player_busted?(player_cards)

if !player_busted?(player_cards)
  loop do
    break if calculate_sum(dealer_cards) >= 17 || player_busted?(dealer_cards)

    deal(dealer_cards, deck)
  end
  prompt("Dealer busted. Player won!") if player_busted?(dealer_cards)
end

if !player_busted?(player_cards) && !player_busted?(dealer_cards)
  display_cards('dealer', dealer_cards)
  detect_winner(player_cards, dealer_cards)
end