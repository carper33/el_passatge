class SiteController < ApplicationController
	def home
		@booking = Booking.new
	end

end
