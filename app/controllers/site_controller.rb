class SiteController < ApplicationController
	def home
    @rooms = Room.all_rooms
<<<<<<< HEAD
		@booking = Booking.new
=======
>>>>>>> origin
	end

end
