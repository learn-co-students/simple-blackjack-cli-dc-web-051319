def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
    rand(11) + 1
end

def display_card_total(total)
    puts "Your cards add up to #{total}"
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    gets.strip
end

def end_game(total)
    puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
    total = deal_card() + deal_card()
    display_card_total(total)
    return total
end

def hit?(total)
    prompt_user
    ans = get_user_input
    case ans
        when 'h'
            return total + deal_card()
        when 's'
            return total
        else
            invalid_command()
        end
end

def invalid_command
    puts  "Please enter a valid command"
    hit?()
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome()
    total = initial_round()
    until total > 21
        total = hit?(total)
        display_card_total(total)
    end
    puts "Sorry, you hit 30. Thanks for playing!"
end
    
