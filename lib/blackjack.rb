require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  (1..11).to_a.sample
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  initial_total = card1 + card2
  display_card_total(initial_total)
  return initial_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 's'
  elsif input == 'h'
    card3 = deal_card
    card_total += card3
    display_card_total(card_total)
  else
    invalid_command
    prompt_user
  end
  return card_total

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_score = initial_round
  first_hit = hit?(initial_score)
  first_hit > 21 ? end_game(first_hit) : hit?(first_hit)

end
    
