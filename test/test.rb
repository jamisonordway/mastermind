require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class MastermindTest < MiniTest::Test

  def setup
    mastermind = Game.new
  end

  def test_it_exists
    assert_instance_of Game, mastermind
  end




end
