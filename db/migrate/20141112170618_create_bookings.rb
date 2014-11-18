class CreateBookings < ActiveRecord::Migration
  def change
		create_table :bookings do |t|
			t.integer :room_id
			t.date :date_arrival
			t.date :date_departure
			t.integer :final_price
		  t.timestamps
		end
  end
end
