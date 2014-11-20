class BookingsController < ApplicationController
	helper_method :booking

	def index
		@booking= Booking.new
	end
	def create
		
	end




	private
	def booking
		@booking= Booking.new(params)
	end
end
