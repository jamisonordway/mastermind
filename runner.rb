#require './lib/answer'
require './lib/game'

def play
  puts "I have generated a beginner sequence with four elements made up of: (r)ed,
(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
What's your guess?"
  g = Game.new
  amount_of_guesses = 0
  @user_guess = gets.chomp
  amount_of_guesses += 1
  g.solution_maker
  g.check_for_correct_letters(@guess, @solution)
  g.check_for_correct_indexes(@guess, @solution)
if @user_guess != @solution
  puts "You had #{@correct_letters} correct colors with #{@correct_indexes}
  in the correct position."
elsif @user_guess == @solution
  "You won! You guessed #{guess}. You had #{@correct_letters} correct
  colors in #{@correct_indexes} correct positions.
  You guessed #{amount_of_guesses} times."
elsif @user_guess == "q"
  self.play
elsif @user_guess == "c"
  puts "The solution is #{solution}."
elsif @user_guess.length > 4
  puts "Your guess was too long."
elsif @user_guess.length < 4
  puts "Your guess was too short."
end

end


def show_instructions
  puts "Guess a sequence of characters that may include any of the
  following: rgby. Press q at any time to exit game."
end

def show_invalid
  "Looks like your input was not valid. Try again!"
end


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
    break
  else
    show_invalid
    # this should be a method
  end

end
