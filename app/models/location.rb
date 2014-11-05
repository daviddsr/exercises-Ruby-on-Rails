class Location < ActiveRecord::Base
	def self.lastcreated(numero)
		self.order(created_at: :desc).limit(numero)

	end
		has_many :visits
	
		validates :name, presence: true
		validates :name, length: { maximum: 30 }
		validates :city, presence: true

end
