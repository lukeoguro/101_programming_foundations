WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

PLAYERS = [:player, :computer]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WIN_SCORE = 5
BOARD_SIZE = 3
CENTER_SQUARE = 5

VALID_YES_NO = ['y', 'yes', 'n', 'no']

def clear_screen
  system('clear') || system('cls')
end

def prompt(message)
  message.split("\n").each { |line| puts("=> #{line}") }
end

def display_welcome_message
  welcome_message = <<~MSG
    Welcome to command line Tic Tac Toe!
    You will play the computer and each round will be a win, loss, or tie.
    The first to win 5 rounds is the grand winner. Good luck!
  MSG
  prompt(welcome_message)
end

# rubocop:disable Metrics/AbcSize
def display_board(board)
  clear_screen
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def display_round_result(board)
  if someone_won?(board)
    prompt "#{detect_round_winner(board).capitalize} won!"
  else
    prompt "It's a tie!"
  end
end

def display_score(score)
  prompt("Player: #{score[:player]} | Computer: #{score[:computer]}")
end

def display_grand_winner(score)
  if score[:player] == WIN_SCORE
    prompt("You are the GRAND WINNER! Congratulations!")
  else
    prompt("The computer is the GRAND WINNER. Better luck next time.")
  end
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr[0]
  when 2 then arr.join(" #{word} ")
  else
    "#{arr[0..-2].join(delimiter)}#{delimiter}#{word} #{arr[-1]}"
  end
end

def gets_starting_player
  loop do
    starting_player_msg = <<~MSG
      Choose who goes first in every round this game:
      1) Player, 2) Computer, 3) Random
    MSG
    prompt(starting_player_msg)
    user_input = gets.chomp.strip.to_i
    if (1..2).include?(user_input)
      return PLAYERS[user_input - 1]
    elsif user_input == 3
      return PLAYERS.sample
    end
    prompt("That's not a valid choice.")
  end
end

def gets_continue_game
  loop do
    prompt("Press any key to continue, or 'Q' to quit the game early.")
    user_input = gets.chomp.strip.downcase
    return user_input != 'q'
  end
end

def gets_play_again
  loop do
    prompt("Would you like to play the game again? (Y/N)")
    user_input = gets.chomp.strip.downcase
    if VALID_YES_NO.include?(user_input)
      return user_input.start_with?('y')
    end
    prompt("Please enter Y/N.")
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def gets_player_choice(board)
  loop do
    prompt "Choose a square (#{joinor(empty_squares(board))}):"
    square = gets.chomp.to_i
    return square if empty_squares(board).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
end

def find_third_square(board, marker)
  WINNING_LINES.each do |line|
    if board.values_at(*line).count(marker) == (BOARD_SIZE - 1)
      line.each { |square| return square if board[square] == INITIAL_MARKER }
    end
  end
  nil
end

def calc_computer_choice(board)
  square ||= find_third_square(board, COMPUTER_MARKER)
  square ||= find_third_square(board, PLAYER_MARKER)
  square ||= CENTER_SQUARE if empty_squares(board).include?(CENTER_SQUARE)
  square || empty_squares(board).sample
end

def place_piece!(board, current_player)
  if current_player == :player
    square = gets_player_choice(board)
    board[square] = PLAYER_MARKER
  else
    square = calc_computer_choice(board)
    board[square] = COMPUTER_MARKER
  end
end

def alternate_player(current_player)
  current_player == :player ? :computer : :player
end

def detect_round_winner(board)
  WINNING_LINES.each do |line|
    if board.values_at(*line).count(PLAYER_MARKER) == BOARD_SIZE
      return :player
    elsif board.values_at(*line).count(COMPUTER_MARKER) == BOARD_SIZE
      return :computer
    end
  end
  nil
end

def board_full?(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  !!detect_round_winner(board)
end

def log_score(board, score)
  score[detect_round_winner(board)] += 1 if someone_won?(board)
end

def game_over?(score)
  score[:player] == WIN_SCORE || score[:computer] == WIN_SCORE
end

def play_round(board, starting_player, score)
  current_player = starting_player

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)
  display_round_result(board)

  log_score(board, score)
  display_score(score)
end

loop do
  clear_screen
  display_welcome_message

  starting_player = gets_starting_player

  score = { player: 0, computer: 0 }
  loop do
    board = initialize_board
    play_round(board, starting_player, score)

    break if game_over?(score)
    break unless gets_continue_game
  end

  if game_over?(score)
    display_grand_winner(score)
    next if gets_play_again
  end

  break
end

prompt("Thanks for playing Tic Tac Toe! Good bye!")
