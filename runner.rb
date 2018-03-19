#require './lib/answer'
require './lib/game'

#outer loop
loop do
  puts """Welcome to MASTERMIND.
  Would you like to (p)lay, get (i)nstructions, or (q)?"""
  choice = gets.chomp
  if choice == "p"
    #mastermind.game_solution
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

#inner loop -- REFACTOR and write methods
def play
  puts "I have generated a beginner sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
  What's your guess?"
  mastermind = Game.new
  mastermind.game_solution
  amount_of_guesses = 0
  guess = gets.chomp
  user_guess = []
  user_guess << guess.chars
  amount_of_guesses += 1
  mastermind.check_for_correct_letters(user_guess)
  mastermind.check_for_correct_indexes(user_guess, mastermind.solution)
  until guess == "q"
    if guess == "c"
      puts "The solution is #{mastermind.solution}"
      break
    elsif guess.length > 4
      puts "Your guess was too long."
    elsif guess.length < 4
      puts "Your guess was too short."
    elsif guess != mastermind.solution
      puts "You had #{mastermind.correct_letters} correct colors with #{mastermind.correct_indexes}
      in the correct position."
       break
    elsif guess == mastermind.solution.to_s
      "You won! You guessed #{guess}. You had #{mastermind.correct_letters} correct
      colors in #{mastermind.correct_indexes} correct positions.
      You guessed #{amount_of_guesses.to_s} times."
    break
    else
      puts "Goodbye, quitter."
    end
  end
end


#methods
def show_instructions
  puts "Guess a sequence of characters that may include any of the
  following: rgby. Press q at any time to exit game."
end

def show_invalid
  "Looks like your input was not valid. Try again!"
end
