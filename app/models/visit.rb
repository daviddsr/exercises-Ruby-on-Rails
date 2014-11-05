class Visit < ActiveRecord::Base
	def self.lastcreated(numero)
		self.order(created_at: :desc).limit(numero)
	end
		belongs_to :location


		validates :user_name, presence: true
		validates :user_name, length: { maximum: 30 }
		

end
