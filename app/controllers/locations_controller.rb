class LocationsController < ApplicationController
	def index
		@locations = Location.lastcreated(10)
	end
end
