class Room < ActiveRecord::Base
	has_many :bookings

	validates :name, presence: true, uniqueness: true
	validates :price_high, presence: true, numericality: true
	validates :price_mid, presence: true, numericality: true
	validates :price_low, presence: true, numericality: true
	validates :description, presence: true


end
