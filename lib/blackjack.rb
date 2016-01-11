def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11)+1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  carda = deal_card
  cardb = deal_card
  sum = carda + cardb
  display_card_total(sum)
  sum
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    card_total += deal_card
  elsif answer == 's'
    card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Invalid Command!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end

#runner
