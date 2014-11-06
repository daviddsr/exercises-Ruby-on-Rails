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
			flash[:notice] = "Congratulation, your visit has been created"

			# redirect_to(action: 'index', controller: 'visits', location_id: '@location_id')
			redirect_to location_visits_path @location

		else
			flash[:error] = "Sorry, your visit has not been created"
			render 'new'
		end


	end

	def edit
		@location= Location.find params[:location_id]
		@visit= Visit.find(params[:id])
	end

	def update
		@location= Location.find params[:location_id]
		@visit= Visit.find(params[:id])

		if @visit.update_attributes(visit_params)

			redirect_to location_visits_path @location
		else
			@errors= @visit.errors.full_messages
			render 'edit'
		end

	end

	def destroy
		@visit= Visit.find(params[:id])

		if @visit.delete
			redirect_to location_visits_path @location

		end
	end


private
	def visit_params
		params.require(:visit).permit(:user_name, :from_date, :to_date)
	end

end
