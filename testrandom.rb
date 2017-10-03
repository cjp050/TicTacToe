require "minitest/autorun"
require_relative "random.rb"

class TestRandom < Minitest::Test

    def test_1
        random_variable = Random.new("X")
        assert_equal(8, random_variable.get_move(["X", "X", "X", "O", "X", "O", "X", "O", ""]))
    end 

    def test_2 
        random_variable = Random.new("X")
        assert_equal(true, [0,1].include?(random_variable.get_move(["", "", "X", "X", "X", "X", "X", "X", "X"])))
    end 

    def test_3
        random_variable = Random.new("X")
        assert_equal(true, [7,8].include?(random_variable.get_move(["X", "X", "X", "X", "X", "X", "X", "", ""])))
    end 
end 