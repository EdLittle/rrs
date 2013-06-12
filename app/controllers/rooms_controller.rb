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

	def destroy
		@room = Room.find params[:id]
		@room.destroy
		flash[:success] = "Room successfully deleted."
		redirect_to @room.building
	end

	def edit
		@room = Room.find params[:id]
		@categories = Category.select("name, id")
	end

	def show
		@room = Room.find params[:id]
	end

	def update
		@room = Room.find params[:id]

		if @room.update_attributes params[:room]
			flash[:success] = "Room successfully updated."
			redirect_to building_path @room.building
		else
			flash[:error] = "Room unsuccessfully updated."
			render :action => "edit"
		end
	end
end
