require 'minitest/autorun'
require_relative 'perrian.rb'

class TestSequential < Minitest::Test

    def test_1
        sequential_variable = Sequential.new("X") 
        assert_equal("X", sequential_variable.marker)
    end 

    def test_2 
        sequential_variable = Sequential.new("X")
        assert_equal(1, sequential_variable.get_move(["X", "", "", "", "", "", "", "", ""]))
    end 

    def test_3
        sequential_variable = Sequential.new("X")
        assert_equal(2, sequential_variable.get_move(["X", "O", "", "", "", "", "", "", ""]))
    end 
end 