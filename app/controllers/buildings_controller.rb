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

	def destroy
		@building = Building.find params[:id]
		@building.destroy
		flash[:success] = "Building successfully deleted."
		redirect_to :action => :index
	end

	def edit
		@building = Building.find params[:id]
	end

	def index
		@buildings = Building.all
	end

	def new
		@building = Building.new
	end

	def show
		@building = Building.find params[:id]
		@categories = Category.select("name, id")
	end
	
	def update
		@building = Building.find params[:id]

		if @building.update_attributes params[:building]
			flash[:success] = "Building succesfully updated."
			redirect_to building_path @building
		else
			flash[:error] = "Building unsuccessfully updated."
			render :action => :index
		end
	end
end
