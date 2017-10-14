require "minitest/autorun"
require_relative "unbeatable.rb"

class TestImpossible < Minitest::Test 
    
    def test_1
        impossible_var = Impossible.new('X')
        assert_equal(2, impossible_var.get_move(["X", "X", "", "", "", "", "", "", ""]))
    end

    def test_2
        impossible_var = Impossible.new('X')
        assert_equal(1, impossible_var.get_move(['O','','O','','','','','','']))
    end
   
    def test_3
        impossible_var = Impossible.new('X')
        assert_equal(4, impossible_var.get_move(["", "", "", "", "", "", "", "", ""]))
    end
   
    def test_4
        impossible_var = Impossible.new('X')
        assert_equal(0, impossible_var.take_corner(["", "", "", "", "", "", "", "", ""]))
    end
   
    def test_5
        impossible_var = Impossible.new('X')
        assert_equal(2, impossible_var.take_corner(["O", "", "", "", "", "", "", "", ""]))
    end
   
    def test_6
        impossible_var = Impossible.new('X')
        assert_equal(6, impossible_var.take_corner(["O", "", "X", "", "", "", "", "", ""]))
    end
    def test_7
        impossible_var = Impossible.new('X')
        assert_equal(8, impossible_var.take_corner(["O", "", "X", "", "", "", "X", "", ""]))
    end
   
    def test_8
        impossible_var = Impossible.new('X')
        assert_equal(0, impossible_var.get_move(["", "", "", "", "O", "", "", "", ""]))
    end
    def test_9
        impossible_var = Impossible.new('X')
        assert_equal(1, impossible_var.empty_side(["X", "", "X", "", "O", "", "X", "", "O"]))
    end
   
    def test_10
		impossible_var = Impossible.new("X")
		assert_equal(3, impossible_var.block_fork(["O", " ", " ", " ", "X", " ", " ", " ", "O"]))
    end
   
    def test_11
		impossible_var = Impossible.new("X")
		assert_equal(3, impossible_var.get_move(["O", " ", " ", " ", "X", " ", " ", " ", "O"]))
    end
end