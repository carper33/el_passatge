class BookingController < ApplicationController
	
	def index
		
		redirect_to action: create, params: params 

	end

	def create
		

	end


	private

		def booking
			@booking = Booking.new(params)
		end

end
