require "pry"

def welcome
  welcome_message = "Welcome to the Blackjack Table"
  puts welcome_message
end

def deal_card
  card = rand (1..11)
  card
end

def display_card_total(hand_total)
  puts "Your cards add up to #{hand_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_choice = gets.chomp
end

def end_game(hand_total)
  puts "Sorry, you hit #{hand_total}. Thanks for playing!"
end

def initial_round
  card_One = deal_card
  card_Two = deal_card
  hand_total = card_One + card_Two
    display_card_total(hand_total)
    hand_total
end

def hit?(hand_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    hand_total += deal_card
  elsif user_input == "s"
    hand_total
  else
  end 
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
hand_total = initial_round
  while (hand_total < 21)
    hand_total = hit?(hand_total)
    display_card_total(hand_total)
  end
    end_game(hand_total)
end
