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

require 'pry';
INITIAL_MARKER = ' '.freeze
HUMAN_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNIG_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
               [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
               [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, delimiter = ', ', last_delimiter = 'or')
  string = arr.join(delimiter)
  index = string.rindex(delimiter)
  string[index] = " #{last_delimiter}"

  string
end

# rubocop:disable Metrics/MethodLength, AbcSize
def display_board(brd)
  system 'clear'
  puts "Player: #{HUMAN_MARKER}"
  puts "Computer: #{COMPUTER_MARKER}"
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
    prompt('Best of 5 games.')
    prompt("Choose a square (#{joinor(empty_squares(board))}):")
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)

    puts "Sorry, not a a valid choice!"
  end

  board[square] = HUMAN_MARKER
end

def computer_places_piece!(board)
  square = empty_squares(board).sample
  board[square] = COMPUTER_MARKER
end

# check if the board.keys array is empty
def board_full?(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNIG_LINES.each do |line|
    if board[line[0]] == HUMAN_MARKER &&
       board[line[1]] == HUMAN_MARKER &&
       board[line[2]] == HUMAN_MARKER
      return 'Human'
    elsif board[line[0]] == COMPUTER_MARKER &&
          board[line[1]] == COMPUTER_MARKER &&
          board[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board
  # human_score = 0
  # computer_score = 0

    loop do
      display_board(board)

      human_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      player = detect_winner(board)
      # player == 'Human' ? human_score += 1 : computer_score += 1;

      prompt("#{player} won!")
    else
      prompt("It's a tie.")
    end
# binding.pry
    # prompt("Human: #{human_score}")
    # prompt("Computer: #{computer_score}")

    # break if human_score == 5 || computer_score == 5

  prompt('Play again? (y or n)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing Tic Tac Toe. Good bye!')
