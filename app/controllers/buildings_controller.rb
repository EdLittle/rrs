class BuildingsController < ApplicationController
	def create
		@building = Building.new params[:building]
		if @building.save
			flash[:success] = "Building successfully added."
			redirect_to buildings_path
		else
			flash[:error] = "Building unsuccessfully added."
			render :new
		end
	end

	def delete
		
	end

	def edit
		
	end

	def index
		@buildings = Building.all
	end

	def new
		@building = Building.new
		#flash[:success] = "Congrats, it's super nice."
	end

	def show
		@building = Building.find params[:id]
	end
	
	def update
		
	end
end
