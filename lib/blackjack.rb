def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = 1 + rand(11)
  return card
end

def display_card_total(totalCards)
  # code #display_card_total here
  puts "Your cards add up to #{totalCards}"
  return totalCards
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(totalCards)
  # code #end_game here
  puts "Sorry, you hit #{totalCards}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  round = display_card_total(deal_card() + deal_card())
  return round
end

def hit?(totalCards)
  # code hit? here
  prompt_user()
  choice = get_user_input()

  if choice == "h"
    totalCards += deal_card()
  elsif choice != "s" && choice != "h"
    invalid_command()
  end

  return totalCards
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
  welcome()
  cards = initial_round()

  until cards == 21
    cards = hit?(cards)
    if cards > 21
      end_game(cards)
      break
  end

end
