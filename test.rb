require "minitest/autorun"
require_relative "tictactoe.rb"

class TestTicTacToe < Minitest::Test 

    def test_1
        assert_equal(1,1)
    end 

    def test_2 
        board = ['1','2','3','4','5','6','7','8','9']
        assert_equal(['x','2','3','4','5','6','7','8','9'], turn(board, 'x', 1))
    end 

    def test_3 
        board = ['x','2','3','4','5','6','7','8','9']
        assert_equal(['x','2','3','4','5','6','o','8','9'], turn(board, 'o', 7))
    end 

    def test_4 
        board = ['x','2','3','4','5','6','o','8','9']
        position = 8
        assert_equal(true, spot_open?(board, position))
    end 

    def test_5 
        board = ['x','2','3','4','5','6','o','8','9']
        position = 10 
        assert_equal(false, spot_open?(board, position))
    end 

    def test_6
        board = ['x','2','3','4','5','6','o','8','9']
        position = 0 
        assert_equal(false, spot_open?(board, position))
    end  

    def test_7
        assert_equal("playerx", change_player("playero"))
    end 

    def test_8
        grid =["x","o","x","x","o","o","x","o","x"]
        assert_equal(true, full_board(grid))
    end 

    def grand_finally
        grid =["x","o","x","x","o","o","x","o","x"]
        assert_equal()
    end 
end