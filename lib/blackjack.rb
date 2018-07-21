
def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(the_card_sum)
 
  puts "Your cards add up to #{the_card_sum}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def invalid_command
  puts "Please enter a valid command"
end

def get_user_input
  input = gets.chomp
  if input != "s" && input != "h" && input != "exit"
    loop do
      invalid_command
      prompt_user
      input = gets.chomp
      break if input == "s" || input == "h" || input == "exit"
    end
  end
  input  
end

def end_game (the_card_sum)
 puts "Sorry, you hit #{the_card_sum}. Thanks for playing!"
end

def initial_round
  total = 0 
  2.times do 
    cards = deal_card
    total = total + cards
  end
  display_card_total(total)
  total
end

def hit? (the_card_sum)
  prompt_user 
  new_input = get_user_input
  
  if new_input == "h"
    new_card = deal_card
    the_card_sum = the_card_sum + new_card
  else
  the_card_sum
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 the_card_sum = 0
 welcome
 the_card_sum =  initial_round
  while the_card_sum <= 21
 the_card_sum = hit?(the_card_sum)
 display_card_total(the_card_sum)
  end
 end_game(the_card_sum)
end
 
