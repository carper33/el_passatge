class Booking < ActiveRecord::Base

	 validates :pax, presence: true
	 validates :date_arrival, presence: true
	 validates :date_departure, presence: true
	 validates :final_price, numericality: true, presence: true
	 validates :room_id, presence: true
end
