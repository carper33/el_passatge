class BookingsController < ApplicationController
	helper_method :booking

	def new
		@booking = Booking.new
	end
	def create
		@booking = Booking.new booking_params
    @user = User.new
    render :action "new", controller: "user"
	end

	private

	def booking_params
		params.require(:booking).permit(:pax, :date_arrival, :date_departure, :room_id)
	end
end
