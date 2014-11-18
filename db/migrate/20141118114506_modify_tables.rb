class ModifyTables < ActiveRecord::Migration
  def change
  	add_column :bookings, :pax, :integer
  	add_column :bookings, :user_id, :integer
  	remove_column :users, :booking_id
  end
end
