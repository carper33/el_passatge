class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :email
    	t.integer :phone
    	t.integer :booking_id
      t.timestamps
    end
  end
end
