class HomepageController < ApplicationController

	def home
		@building = Building.offset(rand(Building.count)).first
	end

	def about
		
	end
end
