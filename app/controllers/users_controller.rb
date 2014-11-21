class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new users_params

    if @user.save

      @booking = user.bookings.new booking_params
      @booking.save
      msg_save = 'Booking saved'

      render 'new'
    else
      @booking.valid?
      @booking.errors.full_messages
      render 'new'
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:pax, :date_arrival, :date_departure, :room_id)
  end

  def users_params
    params.require(:user).permit(:name, :email, :phone)
  end

  def user
    @saved_user ||= User.find_by id: @user.id
  end
end
