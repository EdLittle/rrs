class RoomsController < ApplicationController

	def create
		@room = Room.new params[:room]

		if @room.save
			flash[:success] = "Room successfully added."
			redirect_to @room.building
		else
			flash[:error] = "Room unsuccessfully added."
			render :controller => "buildings", :action => "show"
		end		
	end

	def show
		@room = Room.find params[:id]
	end
	
end
