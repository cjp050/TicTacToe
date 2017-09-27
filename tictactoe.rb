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

def win(board)

end 
end 
