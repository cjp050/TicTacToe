def turn(board, player, position)
    # p board
    # p player
    # p position
    board[position-1] = player
    board
end 

def spot_open?(board, position)
    if board[position-1] == 'x'||board[position-1] == 'o'
        false 
    elsif position >= 10||position <= 0
        false 
    else 
        true 
    end 
end 

def change_player(current_player)
    if current_player == "playerx"
        "x"
    elsif current_player == "playero"
        "o"
    end 
end 

def full_board(board)
    if board.all? {|space| space.include?("x") || space.include?("o")}
    board_full = true
else 
    board_full = "false"
end 

def winner(board)
    p "board is #{board}"
          if  board[0] == "x" && board[1] == "x" && board[2] == "x" || board[0] == "o" && board[1] == "o" && board[2] == "o"
    true
        elsif board[3] == "x" && board[4] == "x" && board[5] == "x" || board[3] == "o" && board[4] == "o" && board[5] == "o"
    true
        elsif board[6] == "x" && board[7] == "x" && board[8] == "x" || board[6] == "o" && board[7] == "o" && board[8] == "o"
    true
        elsif board[0] == "x" && board[3] == "x" && board[6] == "x" || board[0] == "o" && board[3] == "o" && board[6] == "o"
    true
        elsif board[1] == "x" && board[4] == "x" && board[7] == "x" || board[1] == "o" && board[4] == "o" && board[7] == "o"    
    true
        elsif board[2] == "x" && board[5] == "x" && board[8] == "x" || board[2] == "o" && board[5] == "o" && board[8] == "o"
    true
        elsif board[0] == "x" && board[4] == "x" && board[8] == "x" || board[0] == "o" && board[4] == "o" && board[8] == "o"
    true
        elsif board[2] == "x" && board[4] == "x" && board[6] == "x" || board[2] == "o" && board[4] == "o" && board[6] == "o"
    true
        else 
    false
    end
end 
end 
