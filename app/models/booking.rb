class Booking < ActiveRecord::Base
	belongs_to :rooms
	belongs_to :users

  before_save :final_price

	validates :pax, presence: true, numericality: true
	validates :date_arrival, presence: true
	validates :date_departure, presence: true
	validates :final_price, presence: true, numericality: true
	validates :room_id, presence: true
	validates :user_id, presence: true

  def final_price
    @room = Room.find_by(id: self.room_id)
    self.final_price = seasson_price
  end

  def seasson_price

    m = self.date_arrival.month
    if m >= 1 && m <= 4
      price = @room.price_low
    elsif m >= 5 && m <= 8
      price = @room.price_mid
    elsif m >= 9 && m <= 12
      price = @room.price_high
    end
  end
end
