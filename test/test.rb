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

  end

  def test_it_counts_user_guess_chars_in_solution

  end

  def test_it_checks_correct_indexes

  end
  
end
