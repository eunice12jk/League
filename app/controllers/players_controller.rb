class PlayersController < ApplicationController
	def index
		@players = Player.all
	end

	def new 
	end

	def create
		player = Player.new(player_params)
		if player.save
			redirect_to "/players"
		else
			flash[:errors] = player.error.messages
			redirect_to "/players/new"
		end
	end

	def show
		@player = Player.find(params[:id])
	end

private
	def player_params
		params.require(:player).permit(:First_name, :Last_name)
	end
end
