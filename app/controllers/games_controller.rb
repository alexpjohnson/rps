class GamesController < ApplicationController
	def throw
		sign_hash = {0 => :rock, 1 => :paper, 2 => :scissors}
		win_hash = {:rock => :scissors, :paper => :rock, :scissors => :paper}
		@player_throw = params[:game][:sign].to_sym
		@server_throw = sign_hash[rand(0..2)]

		if win_hash.keys.include?(@player_throw)
			#if @player_throw == @server_throw
			#	@result = 'tie'
			#elsif win_hash[@player_throw] == @server_throw
			#	@result = 'win'
			#else
			#	@result = 'lose'
			#end
			@result = @player_throw == @server_throw ? 'tie' : win_hash[@player_throw] == @server_throw ? 'win' : 'lose'
		else
			@result = 'invalid'
		end
	end

end
