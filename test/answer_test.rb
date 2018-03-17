require 'minitest/autorun'
require 'minitest/pride'
require './lib/answer.rb'

class AnswerTest < MiniTest::Test

  def setup
    answer = Answer.new
  end

  def test_it_exists
  answer = Answer.new
  assert_instance_of Answer, answer
  end

  


end
