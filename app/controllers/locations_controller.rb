class LocationsController < ApplicationController
	def index
		@locations = Location.lastcreated(10)
	end

	def show
		@location = Location.find(params[:id])

	end

	
end
