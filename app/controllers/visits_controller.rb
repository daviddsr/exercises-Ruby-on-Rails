class VisitsController < ApplicationController

	def index
		@visits = Visit.lastcreated(10)
	end
	def show
		@visit = Visit.find(params[:id])
	end

end

