class Random
	attr_accessor :marker
	
	def initialize(marker)
		@marker = marker 
	end 

	def get_move(board_state)
		valid_pos = []

		board_state.each_with_index do |val, pos|
			if val == ''
				valid_pos << pos
			end
		end
		valid_pos.sample
	end
end