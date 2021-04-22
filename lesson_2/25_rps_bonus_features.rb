GAME_LOGIC = {
  rock: [:scissors, :lizard],
  paper: [:rock, :spock],
  scissors: [:paper, :lizard],
  spock: [:scissors, :rock],
  lizard: [:spock, :paper]
}

ABBREVIATIONS = {
  r: :rock,
  p: :paper,
  s: :scissors,
  k: :spock,
  l: :lizard
}

WIN_SCORE = 5

VALID_YES_NO = ['y', 'yes', 'n', 'no']

def clear_screen
  system('clear') || system('cls')
end

def prompt(message)
  message.split("\n").each { |line| puts("=> #{line}") }
end

def display_welcome_message
  welcome_message = <<~MSG
    Welcome to Rock Paper Scissors Lizard Spock!
    You will play the computer and each round will be a win, loss, or tie.
    The first to win 5 rounds is the grand winner. Good luck!
  MSG
  prompt(welcome_message)
end

def display_choices(player_choice, computer_choice)
  prompt("You chose: #{player_choice}; Computer chose; #{computer_choice}.")
end

def display_result(round_winner)
  if round_winner == :player
    prompt("You won!")
  elsif round_winner == :computer
    prompt("You lost.")
  else
    prompt("It's a tie.")
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

def display_goodbye_message
  prompt("Thanks for playing. Good bye!")
end

def game_over?(score)
  score[:player] == WIN_SCORE || score[:computer] == WIN_SCORE
end

def win?(first_choice, second_choice)
  GAME_LOGIC[first_choice].include?(second_choice)
end

def calc_round_winner(player_choice, computer_choice)
  if win?(player_choice, computer_choice)
    :player
  elsif win?(computer_choice, player_choice)
    :computer
  end
end

def log_score(round_winner, score)
  score[round_winner] += 1 unless round_winner.nil?
end

def get_player_choice
  loop do
    prompt("Choose one: (r)ock, (p)aper, (s)cissors, spoc(k), (l)izard")
    player_choice = gets.chomp.downcase.strip.to_sym
    if GAME_LOGIC.keys.include?(player_choice)
      return player_choice
    elsif ABBREVIATIONS.keys.include?(player_choice)
      return ABBREVIATIONS[player_choice]
    end
    prompt("That's not a valid choice.")
  end
end

def get_play_again
  loop do
    prompt("Would you like to play again? (Y/N)")
    play_again = gets.chomp.strip.downcase
    if VALID_YES_NO.include?(play_again)
      return play_again.start_with?('y')
    end
    prompt("Please enter Y/N.")
  end
end

def play_round(score)
  player_choice = get_player_choice
  computer_choice = GAME_LOGIC.keys.sample

  round_winner = calc_round_winner(player_choice, computer_choice)
  log_score(round_winner, score)

  clear_screen

  display_choices(player_choice, computer_choice)
  display_result(round_winner)
  display_score(score)
end

loop do
  clear_screen
  display_welcome_message

  score = { player: 0, computer: 0 }
  until game_over?(score)
    play_round(score)
  end

  display_grand_winner(score)
  break unless get_play_again
end
display_goodbye_message
