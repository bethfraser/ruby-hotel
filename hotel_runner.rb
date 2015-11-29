require 'pry-byebug'
require_relative('hotel')
require_relative('room')
require_relative('guest')
require_relative('chain')

hotel = Hotel.new("The Fraser Hotel")
hotel_2 = Hotel.new("CodeClan Manor")

chain = Chain.new("Best Hotels Inc")

room_1 = Room.new('1', 'double', 79)
room_2 = Room.new('2', 'double', 79)
room_3 = Room.new('3', 'double', 79)
room_4 = Room.new('4', 'single', 59)
room_5 = Room.new('5', 'single', 59)
room_6 = Room.new('6', 'single', 59)

room_a = Room.new('A', 'double', 79)
room_b = Room.new('B', 'double', 79)
room_c = Room.new('C', 'double', 79)
room_d = Room.new('D', 'single', 59)

guest_1 = Guest.new('Beth')
guest_2 = Guest.new('Kim')
guest_3 = Guest.new('Adam')
guest_4 = Guest.new('Mike')
guest_5 = Guest.new('Jess')
guest_6 = Guest.new('David')
guest_7 = Guest.new('James')

guest_8 = Guest.new('Brian')
guest_9 = Guest.new('Rachel')
guest_10 = Guest.new('Gemma')
guest_11 = Guest.new('Andy')

hotel.add_room(room_1, room_2, room_3, room_4, room_5, room_6) 
hotel.add_guest(guest_1, guest_2, guest_3, guest_4, guest_5, guest_6, guest_7)

puts "Welcome to #{hotel.name}\n\n"
puts "Current hotel capacity is: #{hotel.capacity} rooms"
puts "Current number of rooms booked is: #{hotel.number_rooms_booked} rooms"

puts "\nBeth checks in to a double room."
hotel.check_in('Beth', 'double')
puts "Kim checks in to a double room."
hotel.check_in('Kim', 'double')


puts "\nCurrent hotel capacity is: #{hotel.capacity} rooms"
puts "Current number of rooms booked is: #{hotel.number_rooms_booked} rooms"

puts "\nGuest List"
hotel.guestlist
puts "\nRoom List"
hotel.roomlist

puts "\nBeth checks out of Room 1."
hotel.check_out('Beth')

puts "\nGuest List"
hotel.guestlist
puts "\nRoom List"
hotel.roomlist

puts "\nMore guests check in. Mike wants a single room but there are none left."
hotel.check_in('Beth', 'single')
hotel.check_in('Adam', 'single')
hotel.check_in('Jess', 'single')
hotel.check_in('Mike', 'single')
hotel.check_in('David', 'double')

puts "\nGuest List"
hotel.guestlist
puts "\nRoom List"
hotel.roomlist

puts "\nCurrent hotel capacity is: #{hotel.capacity} rooms"
puts "Current number of rooms booked is: #{hotel.number_rooms_booked} rooms"

puts "\nJames tries to check in to a single room."
hotel.check_in('James', 'single')

puts "\nRoom 1's rate is: £#{room_1.rate}"

puts "Total day's revenue is: £#{hotel.day_revenue}"

chain.add_hotels(hotel, hotel_2)

hotel_2.add_room(room_a, room_b, room_c, room_d)
hotel_2.add_guest(guest_8, guest_9, guest_10, guest_11)

hotel_2.check_in('Rachel', 'double')
hotel_2.check_in('Brian', 'single')

puts "The Best Hotel Inc chain's revenue for today is: £#{chain.total_day_revenue}"

binding.pry;""
