class Booking < ActiveRecord::Base
	belongs_to :rooms
	belongs_to :users


	validates :pax, presence: true
	validates :date_arrival, presence: true
	validates :date_departure, presence: true
	validates :final_price, numericality: true, presence: true
	validates :room_id, presence: true
	validates :user_id, presence: true


end
