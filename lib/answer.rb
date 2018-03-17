#require "pry"

class Answer

attr_reader :colors, :solution

def initialize
  @colors = ["r", "g", "b", "y"]
  @solution = @colors.map do |color|
  @colors.sample

  end

end


#binding.pry
end

answer = Answer.new
