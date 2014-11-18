class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
    	t.string :name
    	t.integer :price_high
    	t.integer :price_mid
    	t.integer :price_low
    	t.text :description
      t.timestamps
    end
  end
end
