require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < MiniTest::Test

  def setup
    mastermind = Game.new
  end

  def test_it_exists
    assert_instance_of Game, mastermind
  end

def test_it_creates_solution
  @colors = ["r","g","b","y"]
  @solution =[]
  @colors.each do |color|
    @solution << @colors.sample
  end

end

end
