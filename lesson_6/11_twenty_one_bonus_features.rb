RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
SUITS = %w(♠ ♥ ♣ ♦)

COURTS = ["J", "Q", "K"]
COURTS_VALUE = 10

ACE = "A"
ACE_VALUE = [1, 11]

TARGET_VALUE = 21
DEALER_STAYS_VALUE = TARGET_VALUE - 4

ROUNDS_TO_WIN = 5

VALID_YES_NO = ['y', 'yes', 'n', 'no']

def clear_screen
  system('clear') || system('cls')
end

def prompt(message, separator=false)
  puts if separator
  message.split("\n").each { |line| puts("=> #{line}") }
end

def display_welcome_message
  welcome_message = <<~MSG
    Welcome to the command line Twenty-One game!
    The goal of Twenty-One is to get as close to #{TARGET_VALUE} \
    as possible without going over.
    You will play the dealer and each round will be a win, loss or tie.
    The first to win #{ROUNDS_TO_WIN} rounds is the champion. Good luck!
    Press any key to continue:
  MSG
  prompt(welcome_message)
  gets.chomp
end

def create_and_shuffle_deck
  deck = []
  SUITS.each do |suit|
    RANKS.each do |rank|
      deck << { rank: rank, suit: suit }
    end
  end
  deck.shuffle
end

def deal_starting_hands(deck)
  hands = { player: [], dealer: [] }
  2.times do
    hands[:player] << deck.pop
    hands[:dealer] << deck.pop
  end
  hands
end

def ace_value(total)
  total + ACE_VALUE.max <= TARGET_VALUE ? ACE_VALUE.max : ACE_VALUE.min
end

def total(hand)
  ranks = hand.map { |card| card[:rank] }
  total = 0
  ranks.each do |rank|
    if (2..10).include?(rank)
      total += rank
    elsif COURTS.include?(rank)
      total += COURTS_VALUE
    end
  end
  ranks.count("A").times do
    total += ace_value(total)
  end
  total
end

def initialize_round
  deck = create_and_shuffle_deck

  hands = deal_starting_hands(deck)

  totals = {}
  totals[:player] = total(hands[:player])
  totals[:dealer] = total(hands[:dealer])

  return deck, hands, totals
end

def format_card(card)
  "[#{card[:rank]}#{card[:suit]}]"
end

def join_cards(cards)
  cards.map { |card| "[#{card[:rank]}#{card[:suit]}]" }.join(' ')
end

def display_hands(hands, totals, show_dealer=true)
  clear_screen
  if show_dealer
    prompt "Dealer: #{join_cards(hands[:dealer])} => #{totals[:dealer]}"
  else
    prompt "Dealer: #{format_card(hands[:dealer].first)} [  ]"
  end
  prompt "Player: #{join_cards(hands[:player])} => #{totals[:player]}"
end

def display_player_turn_message(hand)
  message = if hand.size == 2
              "The dealer has dealt the initial cards."
            else
              "You chose to hit and drew #{format_card(hand.last)}."
            end
  prompt(message, true)
end

def valid_number?(input)
  input.to_i.to_s == input
end

def gets_player_choice
  loop do
    prompt "Press '1' to hit, '2' to stay:"
    input = gets.chomp.strip
    return input.to_i if (1..2).include?(input.to_i) && valid_number?(input)
    prompt "Sorry, that's not a valid choice."
  end
end

def busted?(total)
  total > TARGET_VALUE
end

def player_turn(deck, hands, totals)
  loop do
    display_hands(hands, totals, false)
    display_player_turn_message(hands[:player])
    player_choice = gets_player_choice
    if player_choice == 1
      hands[:player] << deck.pop
      totals[:player] = total(hands[:player])
    end
    break if player_choice == 2 || busted?(totals[:player])
  end
end

def dealer_turn(deck, hands, totals)
  until totals[:dealer] >= DEALER_STAYS_VALUE
    hands[:dealer] << deck.pop
    totals[:dealer] = total(hands[:dealer])
  end
end

def display_dealer_turn_message(hand)
  num_hits = hand.size - 2
  message = if num_hits == 0
              "The dealer chose not to hit."
            else
              "The dealer chose to hit #{num_hits} time(s) "\
              "and drew #{join_cards(hand[2..-1])}."
            end
  prompt(message, true)
end

def display_round_result(totals)
  message = if busted?(totals[:player])
              "You busted, dealer wins."
            elsif busted?(totals[:dealer])
              "Dealer busts, you win!"
            elsif totals[:player] > totals[:dealer]
              "You have the better score "\
              "(#{totals[:player]} > #{totals[:dealer]}). You win!"
            elsif totals[:player] < totals[:dealer]
              "Dealer had the better score "\
              "(#{totals[:dealer]} > #{totals[:player]}). Dealer wins!"
            else
              "The scores are even at #{totals[:dealer]}. It's a tie."
            end
  prompt(message)
end

def log_score(totals, score)
  if busted?(totals[:dealer])
    score[:player] += 1
  elsif busted?(totals[:player])
    score[:dealer] += 1
  elsif totals[:player] > totals[:dealer]
    score[:player] += 1
  elsif totals[:player] < totals[:dealer]
    score[:dealer] += 1
  end
end

def display_score(score)
  prompt("Player: #{score[:player]} | Dealer: #{score[:dealer]}")
end

def process_round(hands, totals, score)
  display_hands(hands, totals)
  if busted?(totals[:player])
    display_player_turn_message(hands[:player])
  else
    display_dealer_turn_message(hands[:dealer])
  end
  display_round_result(totals)

  log_score(totals, score)
  display_score(score)
end

def game_over?(score)
  score[:player] == ROUNDS_TO_WIN || score[:dealer] == ROUNDS_TO_WIN
end

def continue_current_game?
  loop do
    prompt "Press any key to continue, or 'Q' to quit the game early."
    user_input = gets.chomp.strip.downcase
    return user_input != 'q'
  end
end

def display_game_winner(score)
  if score[:player] == ROUNDS_TO_WIN
    prompt("You are the champion! Congratulations!")
  else
    prompt("The dealer is the champion! Better luck next time.")
  end
end

def play_new_game?
  loop do
    prompt "Would you like to play another game? (Y/N)"
    user_input = gets.chomp.strip.downcase
    if VALID_YES_NO.include?(user_input)
      return user_input.start_with?('y')
    end
    prompt("Please enter Y/N.")
  end
end

clear_screen
display_welcome_message
loop do
  score = { player: 0, dealer: 0 }
  loop do
    deck, hands, totals = initialize_round

    player_turn(deck, hands, totals)
    dealer_turn(deck, hands, totals) unless busted?(totals[:player])

    process_round(hands, totals, score)

    break if game_over?(score)
    break unless continue_current_game?
  end

  if game_over?(score)
    display_game_winner(score)
    next if play_new_game?
  end

  break
end

prompt "Thanks for playing Twenty-One! Good bye!"
