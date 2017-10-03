class Random
	
		attr_accessor :marker
	
		def get_move(board_state)
	
			valid_pos = []
	
			board_state.each_with_index do |val, pos|
				if val == ' '
					valid_pos.push(pos)
				end
			end
			valid_pos.sample
		end
	
	end