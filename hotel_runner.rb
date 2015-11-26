require 'pry-byebug'
require_relative('hotel')
require_relative('room')
require_relative('guest')

hotel = Hotel.new("The Fraser Hotel")

room_1 = Room.new('1', 'double')
room_2 = Room.new('2', 'double')
room_3 = Room.new('3', 'double')
room_4 = Room.new('4', 'single')
room_5 = Room.new('5', 'single')
room_6 = Room.new('6', 'single')

guest_1 = Guest.new('Beth')
guest_2 = Guest.new('Kim')

puts hotel.name

hotel.add_room(room_1, room_2, room_3, room_4, room_5, room_6) 

hotel.roomlist


puts hotel.capacity
puts hotel.number_rooms_booked

puts guest_1.name

hotel.add_guest(guest_1, guest_2)
hotel.guestlist


hotel.check_in('Beth', '1')
hotel.check_in('Kim', '1')
hotel.check_in('Kim', '3')


puts hotel.capacity
puts hotel.number_rooms_booked

hotel.guestlist
hotel.roomlist

hotel.check_out('Beth', '1')

hotel.guestlist
hotel.roomlist



