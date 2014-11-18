class UpdateBookings < ActiveRecord::Migration
  def change
  	remove_column :bookings, :user_id
  	remove_column :bookings, :date_arrive
  	add_column :bookings, :date_arrival, :date
  	add_column :users, :booking_id, :integer
  end
end
