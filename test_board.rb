require "minitest/autorun"
require_relative "board.rb"

class TestPlayer < Minitest::Test

    def test_1
        board_variable = Board.new
        assert_equal(Array.new(9, ""), board_variable.ttt_board)
    end 

    def test_2
        board_variable = Board.new 
        board_variable.update_position(0, "X")
        assert_equal(["X", "", "", "", "", "", "", "", ""], board_variable.ttt_board)
    end 

    def test_3
        board_variable = Board.new 
        board_variable.update_position(0, "X")
        board_variable.update_position(8, "O")
        assert_equal(["X", "", "", "", "", "", "", "", "O"], board_variable.ttt_board)
    end
    
    def test_4
        board_variable = Board.new 
        board_variable.ttt_board = ["X", "O", "X", "O", "X", "O", "X", "O", ""]
        board_variable.update_position(8, "O")
        assert_equal(["X", "O", "X", "O", "X", "O", "X", "O", "O"], board_variable.ttt_board)
    end 

    def test_5
        board_variable = Board.new 
        board_variable.ttt_board = ["X", "", "", "", "", "", "", "", "O"]
        assert_equal(true, board_variable.valid_position?(3))
        assert_equal(false, board_variable.valid_position?(0))
        assert_equal(true, board_variable.valid_position?(7))
    end 

    def test_6
        board_variable = Board.new
        board_variable.ttt_board = ["X", "O", "X", "O", "X", "O", "X", "O", "O"]
        assert_equal(true, board_variable.full_board?)
    end 

    def test_7
        board_variable = Board.new
        board_variable.ttt_board = ["X", "X", "X", "", "", "", "", "", ""]
        assert_equal(true, board_variable.winner?("X"))
    end 
end 

