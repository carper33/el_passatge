# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Booking.create(room_id: 1, date_arrival: Date.today, date_departure: Date.today + 2, final_price: 100)
(1..6).each do |i|
	Room.create(name: "Major standard #{i}", price_high: 100, price_mid: 80, price_low: 50, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint asperiores harum earum temporibus nostrum, odit deserunt necessitatibus et est fugit unde, id non assumenda, eum voluptatem officiis a, tempora ad?")
end
[ "Shohreh Aghdashloo", "Karen Akers", "Jane Alexander", "Alicia Alonso", "Jules Asner", "Pernilla August", "Tisha Terrasini Banker", "Glynis Barber", "Daniel Barnz", "Joy Behar", "Pat Benatar", "Jodi Benson", "Carla Bley", "Lynn Borden", "Angela Bowie", "Katie Boyle", "Dee Dee Bridgewater", "Ellen Burstyn", "L. Scott Caldwell", "Carlos Mencia", "Michele Mercier", "Tita Merello", "Bubber Miley", "Jason Miller", "Jody Miller", "Vincente Minnelli", "Julie Mitchum", "Robert Montgomery", "Clayton Moore", "Pee Wee Moore"].each do | user |
 email = user.downcase.gsub(/\s+/, "")+"@gmail.com"
 User.create(name: user,
             email: email,
             phone: rand(111111111..999999999),
 						 booking_id: 1)
end