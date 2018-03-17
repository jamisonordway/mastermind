class Game

attr_reader :correct_letters
            :correct_indexes

  def initialize
    @colors = ["r","g","b","y"]
    @solution = []
    @guess = []
    @guess << @user_guess.to_a

  end

def colors
  @colors
end

def solution
  @solution
end

def guess
  @user_guess
end

  def solution_maker
      @solution << @colors.map.with_index do |color, index|
      @colors.sample

  end
 end
#pass in user input and solution
#count number of unique characters remove repeated chars
#return any characters of guess that match
 def check_for_correct_letters(guess, solution)
  @solution.uniq do |letter|
  @correct_letters = guess.include?(letter)
  end
end
#pass in user input and solution
#create a new array
#zip solution and guessed chars into arrays together
#count how many of these sub-arrays contain matching characters
#return counted matches
def check_for_correct_indexes(guess, solution)
 @correct_indexes = solution.zip(guess)
 @correct_indexes.count do |char, idx|
   char == idx
 end
end


end
