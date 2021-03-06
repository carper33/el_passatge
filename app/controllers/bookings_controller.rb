class BookingsController < ApplicationController
	helper_method :booking

  def index
    @rooms    = Room.all
    @booking  = Booking.new
  end

	def new
    @rooms    = Room.all
		@booking  = Booking.new
	end

	def create
		@booking  = Booking.new booking_params
    @user     = User.new
    #if params[:email] && params[:name] && params[:phone]
    #  @user     = User.new user_params
    #  @booking  = Booking.new booking_params
    #end
	end

	private

	def booking_params
		params.require(:booking).permit(:pax, :date_arrival, :date_departure, :room_id)
	end

  def user_params
    params.require(:user).permit(:name, :email, :phone)
  end
end
