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
      self.solution << @colors.map do |color|
         @colors.sample
    end
    #require 'pry'; binding.pry
  end
  #pass in user input
  #count number of unique characters in solution, removing repeated chars
  #return any characters of guess that match
  def check_for_correct_letters(user_guess)
    @correct_letters << user_guess.count do |g|
      user_guess.include?(solution)
    end
  end
  #pass in user input and solution
  #create a new array
  #zip solution and guessed chars into arrays together
  #count how many of these sub-arrays contain matching characters
  #return counted matches
  def check_for_correct_indexes(user_guess, game_solution)
    zipped = @solution.zip(guess)
    @correct_indexes = zipped.count do |char, idx|
      char == idx
    end
  end
end
mastermind = Game.new
