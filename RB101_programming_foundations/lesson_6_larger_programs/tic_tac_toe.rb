# tic tac toe

=begin
Tic Tac Toe is a 2 player game played on a 3x3 board.
Each player takes a turn and marks a square on the board.
First player to reach 3 squares in a row, including diagonals, wins.
If all 9 squares are marked and no player has 3 squares in a row,
then the game is a tie.
=end

# display initial 3 x3 board
# ask the user to mark a square
# computer marks a square
# display updated board state
# if winner - display winner
# if board full - display tie
# if neither winner or board full - go to #2
# play again, if yes - go to #1
# good bye

require 'pry'
INITIAL_MARKER = ' '.freeze
HUMAN_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
CHOOSE = true
WINNIG_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
               [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
               [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, delimiter = ', ', last_delimiter = 'or')
  return arr.join if arr.length <= 1

  string = arr.join(delimiter)
  index = string.rindex(delimiter)
  string[index] = " #{last_delimiter}"

  string
end

# rubocop:disable Metrics/MethodLength, AbcSize
def display_board(brd, human_score = 0, computer_score = 0)
  system 'clear'
  prompt('Best of 5 games.')
  prompt("Player: #{HUMAN_MARKER}")
  prompt("Computer: #{COMPUTER_MARKER}")
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
  prompt("Human: #{human_score}")
  prompt("Computer: #{computer_score}")
end

# rubocop:enable Metrics/MethodLength, AbcSize
def initialize_board
  new_board = {}
  (1..9).each { |n| new_board[n] = INITIAL_MARKER }

  new_board
end

def empty_squares(board)
  board.keys.select { |n| board[n] == ' ' }
end

def human_places_piece!(board)
  square = ''
  loop do
    prompt("Choose a square (#{joinor(empty_squares(board))}):")
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)

    puts "Sorry, not a a valid choice!"
  end

  board[square] = HUMAN_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def computer_places_piece!(board)
  square = nil

  WINNIG_LINES.each do |line|
    square = find_at_risk_square(line, board, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNIG_LINES.each do |line|
      square = find_at_risk_square(line, board, HUMAN_MARKER)
      break if square
    end
  end

  if !square && board[5] == INITIAL_MARKER
    square = 5
  elsif !square
    square = empty_squares(board).sample
  end
  board[square] = COMPUTER_MARKER
end

def place_piece!(board, current_player)
  if current_player == 'human'
    human_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  current_player == 'human' ? 'computer' : 'human'
end

def board_full?(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNIG_LINES.each do |line|
    if board.values_at(*line).count(HUMAN_MARKER) == 3
      return 'Human'
    elsif board.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  human_score = 0
  computer_score = 0
  current_player = 'human'

  loop do
    board = initialize_board

    if CHOOSE
      loop do
        prompt('Who begins the game? (human, computer)')
        current_player = gets.chomp.downcase
        break if ['human', 'computer'].include?(current_player)
      end
    end

    loop do
      display_board(board, human_score, computer_score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, human_score, computer_score)
    if someone_won?(board)
      player = detect_winner(board)
      player == 'Human' ? human_score += 1 : computer_score += 1

      prompt("#{player} won!")
    else
      prompt("It's a tie.")
    end

    break if human_score == 5 || computer_score == 5
  end
  prompt('Play again? (y or n)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing Tic Tac Toe. Good bye!')
