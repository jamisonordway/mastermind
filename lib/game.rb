class Game

  attr_accessor :correct_letters,
                :correct_indexes,
                :colors,
                :solution,
                :guess


  def initialize
    @colors = ["r","g","b","y"]
    @solution = []
    @guess = []
    @correct_letters = 0
  end

  def game_solution
       @solution << @colors.map do |color|
       @color.sample
    end
  end
  require 'pry'; binding.pry
  #pass in user input
  #count number of unique characters in solution, removing repeated chars
  #return any characters of guess that match
  def check_for_correct_letters(user_guess)
    user_guess.collect do |letter|
      @solution.include?(letter)
      @correct_letters += 1
    end
  end
  #pass in user input and solution
  #create a new array
  #zip solution and guessed chars into arrays together
  #count how many of these sub-arrays contain matching characters
  #return counted matches
  def check_for_correct_indexes(user_guess, game_solution)
    @correct_indexes = @solution.zip(guess)
    @correct_indexes.count do |char, idx|
      char == idx
    end
  end
end
g = Game.new
