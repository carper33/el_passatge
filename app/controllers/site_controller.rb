class SiteController < ApplicationController
	def home
    @rooms = Room.all_rooms
		@booking = Booking.new
	end

end
