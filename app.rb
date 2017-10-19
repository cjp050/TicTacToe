require "sinatra"
require_relative 'boardapp.rb'
require_relative 'unbeatableapp.rb'
require_relative 'classes_app.rb'
enable 'sessions'


	get '/' do
		session[:board] = Board.new
		erb :welcome, :locals => {board: session[:board]}
	end

	post '/select_players' do
		session[:player1_type] = params[:player1]
		session[:player2_type] = params[:player2]
		puts "#{session[:player2_type]} play 2 type"
		session[:human1] = 'no'
		session[:human2] = 'no'
		if session[:player1_type] == 'Human'
			session[:player1] = Human.new('X')
			session[:human1] = 'yes'
		elsif session[:player1_type] == 'Easy'
			session[:player1] = Sequential.new('X')
		elsif session[:player1_type] == 'Medium'
			session[:player1] = RandomAI.new('X')
		elsif session[:player1_type] == 'Unbeatable'
			session[:player1] = UnbeatableAI.new('X')
		end

		if session[:player2_type] == 'Human'
			session[:player2] = Human.new('O')
			session[:human2] = 'yes'
		elsif session[:player2_type] == 'Easy'
			session[:player2] = Sequential.new('O')
		elsif session[:player2_type] == 'Medium'
			session[:player2] = RandomAI.new('O')
		elsif session[:player2_type] == 'Unbeatable'
			session[:player2] = UnbeatableAI.new('O')
		# else
		# 	redirect '/'
		end
puts "#{session[:player2]} playe 2"
		session[:active_player] = session[:player1]
		puts "#{session[:active_player]} ples work"
		if session[:human1] == 'yes'
			redirect '/board'
		else
			redirect '/make_move'
		end
	end
	
	get '/board' do
		erb :board, :locals => {player1: session[:player1], player2: session[:player2], active_player: session[:active_player].marker, board: session[:board]}
	end

	get '/make_move' do 
		puts "#{session[:active_player]} here"
		move = session[:active_player].get_move(session[:board].ttt_board)
		session[:board].update_position(move, session[:active_player].marker)
		redirect '/check_game_state'
	end

	post '/human_move' do
		move = params[:choice].to_i - 1
		if session[:board].valid_position?(move)
			session[:board].update_position(move, session[:active_player].marker)
			redirect '/check_game_state'
		else
		 	redirect '/board'
		end

	end

	get '/check_game_state' do
		if session[:board].winner?(session[:active_player].marker)
			message = "#{session[:active_player].marker} is the winner! good job"
			erb :game_over, :locals => {board: session[:board], message: message}
		elsif session[:board].full_board?
			message = "Cat took the game, sorry."
			erb :game_over, :locals => {board: session[:board], message: message}
		else
			puts "#{session[:active_player]} before change"
			if session[:active_player] == session[:player1]
				session[:active_player] = session[:player2]
			else
				session[:active_player] = session[:player1]
			end
			puts "#{session[:active_player]} after change"
			if session[:active_player] == session[:player1] && session[:human1] == 'yes' || session[:active_player] == session[:player2] && session[:human2] == 'yes'
				redirect '/board'
			else
				redirect '/make_move'
			end
		end

	end

	get '/clear_sessions' do
		session[:board] = nil
		session[:active_player] = nil
		session[:human1] = nil
		session[:human2] = nil
		session[:player1_type] = nil
		session[:player2_type] = nil
		redirect '/'
	end