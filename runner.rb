#require './lib/answer'
require './lib/game'

def play
  puts "I have generated a beginner sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
  What's your guess?"
  mastermind = Game.new
  mastermind.game_solution
  new_guess
  user_guess = []
  user_guess << @guess.chars
  mastermind.check_for_correct_letters(user_guess)
  mastermind.check_for_correct_indexes(user_guess, mastermind.solution)
end

def new_guess
  #takes user input
  puts "What is your guess?"
  @guess = gets.chomp
  @add_guesses
end


def show_instructions
  puts "Guess a sequence of characters that may include any of the
  following: rgby. Press q at any time to exit game."
end

def show_invalid
  "Looks like your input was not valid. Try again!"
end

def quit_game
  #prints goodbye and exits game
end

def cheat
  #prints solution and asks for a new guess
end

def wrong_guess_length
  #prints that the guess was either too long or too short.
end

def win
  #prints winning message with amount of time elapsed and exits game
end

def feedback
  #prints guess feedback and asks for a new guess
end
#outer loop

loop do
  puts """Welcome to MASTERMIND.
  Would you like to (p)lay, get (i)nstructions, or (q)?"""
  choice = gets.chomp
  if choice == "p"
    play
    # execute our play sequence
    # this should be a method
  elsif choice == "i"
    show_instructions
    # p instructions
    # this should be a method
  elsif choice == "q"
    puts "Goodbye."
    break
  else
    show_invalid
    # this should be a method
  end
end

#inner loop to be REFACTORED

# until guess == "q"
#   if guess == "c"
#     puts "The solution is #{mastermind.solution}"
#     break
#   elsif guess.length > 4
#     puts "Your guess was too long."
#   elsif guess.length < 4
#     puts "Your guess was too short."
#   elsif guess != mastermind.solution
#     puts "You had #{mastermind.correct_letters} correct colors with #{mastermind.correct_indexes}
#     in the correct position."
#      break
#   elsif guess == mastermind.solution.to_s
#     "You won! You guessed #{guess}. You had #{mastermind.correct_letters} correct
#     colors in #{mastermind.correct_indexes} correct positions.
#     You guessed #{amount_of_guesses.to_s} times."
#   break
#   else
#     puts "Goodbye, quitter."
#   end
# end
