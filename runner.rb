#require './lib/answer'
require './lib/game'


def play
  puts "I have generated a beginner sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
  What's your guess?"
  g = Game.new
  amount_of_guesses = 0
  guess = gets.chomp
  user_guess = []
  user_guess << guess.chars
  amount_of_guesses += 1
  g.check_for_correct_letters(user_guess)
  #require 'pry'; binding.pry
  g.check_for_correct_indexes(g.guess, g.solution)
  if guess == "q"
    self.play
  elsif guess == "c"
    puts "The solution is #{g.game_solution}"
  elsif guess.length > 4
    puts "Your guess was too long."
  elsif guess.length < 4
    puts "Your guess was too short."
  elsif guess != g.solution
    puts "You had #{g.correct_letters} correct colors with #{g.correct_indexes}
    in the correct position."
  elsif guess == g.solution
    "You won! You guessed #{guess}. You had #{g.correct_letters} correct
    colors in #{g.correct_indexes} correct positions.
    You guessed #{amount_of_guesses.to_s} times."
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
    g = Game.new
    g.game_solution
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
