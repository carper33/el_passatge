class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.integer :user_id
    	t.integer :room_id
    	t.date :date_arrive
    	t.date :date_departure
      t.timestamps
    end
  end
end
