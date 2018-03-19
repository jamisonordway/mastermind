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

#creates a random selection of colors and shovels them
#into instance variable @solution
  def game_solution
      @solution << @colors.map do |color|
         @colors.sample
    end
  end

  #correct_letters should increment up every time
  #solution includes a char in user_guess
  def check_for_correct_letters(user_guess)
    @correct_letters << user_guess.count do |guess_char|
      @solution.include?(guess_char)
    end
  end
  #pass in user input and solution
  #create a new array
  #zip solution and guessed chars into arrays together
  #count how many of these sub-arrays contain matching characters
  #return counted matches
  def check_for_correct_indexes(user_guess, solution)
    zipped = @solution.zip(user_guess)
    @correct_indexes = zipped.count do |char, idx|
      char == idx
    end
  end
end
mastermind = Game.new
