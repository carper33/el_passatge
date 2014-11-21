class SiteController < ApplicationController
	def home
    @rooms = Room.all_rooms
	end

end
