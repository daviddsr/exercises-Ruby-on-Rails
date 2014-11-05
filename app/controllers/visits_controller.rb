class VisitsController < ApplicationController

	def index
		@location= Location.find(params[:location_id])
		@visits = @location.visits

	end
	def show
		@location = Location.find(params[:location_id])
		@visit = @location.visits.find(params[:id])
	end

	def new
		@location= Location.find params[:location_id]
		@visit= @location.visits.new 
	end

	def create
		@location= Location.find params[:location_id]
		@visit= @location.visits.new(visit_params)

		if @visit.save
			# redirect_to(action: 'index', controller: 'visits', location_id: '@location_id')
			redirect_to location_visits_path @location

		else
			render new
		end


	end


private
	def visit_params
		params.require(:visit).permit(:user_name, :from_date, :to_date)
	end

end
