class Hotel
  attr_reader :rooms, :guests

  def initialize(name)
    @hotel_name = name
    @rooms = []
    @guests = []
  end

  def name
    @hotel_name
  end

  def add_room(*room_array)
    @rooms << room_array
    @rooms.flatten!
  end

  def capacity
    @rooms.select {|room| room.status == "Available"}.length
  end

  def number_rooms_booked
    @rooms.select {|room| room.status == "Occupied"}.length
  end

  def add_guest(*people)
    @guests << people
    @guests.flatten!
  end

  def guestlist
    @guests.each {|person| puts "Name: #{person.name}\tRoom: #{person.room_booking}"}
  end

  def roomlist
    @rooms.each {|room| puts "Room number: #{room.number}\tType: #{room.type}\tStatus: #{room.status}"}
  end

  def check_in(name, room_number)
    return puts "This room is already occupied." if self.occupied?(room_number)
    @rooms.map {|room| room.status = "Occupied" if room.number == room_number}
    @guests.map {|person| person.room_booking = room_number if person.name == name}
  end

  def occupied?(room_number)
    chosen_room = @rooms.select {|room| room.number == room_number}
    return true if chosen_room[0].status == "Occupied"
    return false 

  end

  def check_out(name, room_number)
    @rooms.map {|room| room.status = "Available" if room.number == room_number}
    @guests.map {|person| person.room_booking = 'none' if person.name == name}
  end



end