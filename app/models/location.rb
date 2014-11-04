class Location < ActiveRecord::Base
	def self.lastcreated(numero)
		self.order(created_at: :desc).limit(numero)
	end

	

end
