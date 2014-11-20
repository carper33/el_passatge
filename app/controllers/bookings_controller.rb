class BookingsController < ApplicationController
 
	def index
		@booking = Booking.new
	end

	def create
		@booking = Booking.new booking_params
	end

	private

	def booking_params
		params.require(:booking).permit(:pax, :date_arrival, :date_departure)
	end
end
