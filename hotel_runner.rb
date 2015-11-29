require 'pry-byebug'
require_relative('hotel')
require_relative('room')
require_relative('guest')

hotel = Hotel.new("The Fraser Hotel")

room_1 = Room.new('1', 'double', 79)
room_2 = Room.new('2', 'double', 79)
room_3 = Room.new('3', 'double', 79)
room_4 = Room.new('4', 'single', 59)
room_5 = Room.new('5', 'single', 59)
room_6 = Room.new('6', 'single', 59)

guest_1 = Guest.new('Beth')
guest_2 = Guest.new('Kim')
guest_3 = Guest.new('Adam')
guest_4 = Guest.new('Mike')
guest_5 = Guest.new('Jess')
guest_6 = Guest.new('David')
guest_7 = Guest.new('James')

puts "Welcome to #{hotel.name}"

hotel.add_room(room_1, room_2, room_3, room_4, room_5, room_6) 


puts "Current hotel capacity is: #{hotel.capacity} rooms"
puts "Current number of rooms booked is: #{hotel.number_rooms_booked} rooms"


hotel.add_guest(guest_1, guest_2, guest_3, guest_4, guest_5, guest_6, guest_7)


puts "Beth checks in to Room 1."
hotel.check_in('Beth', '1')
puts "Kim tries to check in to Room 1."
hotel.check_in('Kim', '1')
puts "Kim checks in to Room 3."
hotel.check_in('Kim', '3')


puts "Current hotel capacity is: #{hotel.capacity} rooms"
puts "Current number of rooms booked is: #{hotel.number_rooms_booked} rooms"

puts "Guest List"
hotel.guestlist
puts "Room List"
hotel.roomlist

puts "Beth checks out of Room 1."
hotel.check_out('Beth', '1')

puts "Guest List"
hotel.guestlist
puts "Room List"
hotel.roomlist

puts "More guests check in."
hotel.check_in('Beth', '1')
hotel.check_in('Adam', '2')
hotel.check_in('Jess', '4')
hotel.check_in('Mike', '5')
hotel.check_in('David', '6')

puts "Guest List"
hotel.guestlist
puts "Room List"
hotel.roomlist

puts "Current hotel capacity is: #{hotel.capacity} rooms"
puts "Current number of rooms booked is: #{hotel.number_rooms_booked} rooms"

puts "James tries to check in to room 3."
hotel.check_in('James', '3')

puts "Room 1's rate is: £#{room_1.rate}"

puts "Total day's revenue is: #{hotel.day_revenue}"

