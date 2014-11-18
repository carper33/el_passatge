class User < ActiveRecord::Base
	has_many :bookings

	validates :name, presence: true
	validates :email, presence: true
	validates :phone, presence: true, numericality: true

end
