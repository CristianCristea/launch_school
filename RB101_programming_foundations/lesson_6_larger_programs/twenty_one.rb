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
SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  VALUES.product(SUITS).shuffle
end
# hold players cards
player_cards = []
dealer_cards = []

def deal(own_cards, deck)
  own_cards << deck.pop
end

def busted?(cards)
  total(cards) > 21
end

def total(cards)
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
      sum += value.to_i
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
  prompt("Dealer has #{cards[0][0]} of #{display_suite(cards[0])} and ?")
end

def display_cards(player, cards)
  string = "#{player.capitalize} has "
  cards.each do |card|
    string += "#{card[0]} of #{display_suite(card)}, "
  end

  string.gsub!(/(\,\s){1}$/, '.') # replace last , and space with .
  prompt(string)
end

deck = initialize_deck

def detect_winner(player_cards, dealer_cards)
  player = total(player_cards)
  dealer = total(dealer_cards)

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

  break if player_answer == 's' || busted?(player_cards)
end

prompt("Player busted, Dealer won!") if busted?(player_cards)

if !busted?(player_cards)
  loop do
    break if total(dealer_cards) >= 17 || busted?(dealer_cards)

    deal(dealer_cards, deck)
  end
  prompt("Dealer busted. Player won!") if busted?(dealer_cards)
end

if !busted?(player_cards) && !busted?(dealer_cards)
  display_cards('dealer', dealer_cards)
  detect_winner(player_cards, dealer_cards)
end
