class Human
    attr_reader :marker
    def initialize(marker)
        @marker = marker
    end
    def get_move(ttt_board)
        puts "Make a move"
        move = gets.chomp.to_i - 1 #gets input from user to make move
        if ttt_board[move] == ""
            move
        else
            puts "Spot already taken"
            get_move(ttt_board) #if spot is already taken, method restarts
        end
    end
end