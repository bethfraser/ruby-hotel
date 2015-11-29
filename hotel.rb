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

  def check_in(name, room_type)
    return puts "All hotel rooms are full." if self.capacity == 0
    if find_room_of_type(room_type) == nil
      puts "No rooms of the selected type are available." 
      puts "Would you like to search for a different room type? (y/n)"
      answer = gets.chomp.downcase
      return if answer == 'n'
      puts "Enter room type: (double/single)"
      room_type = gets.chomp.downcase
    end
    room_chosen = find_room_of_type(room_type)
    room_chosen.status = "Occupied"
    @guests.map {|person| person.room_booking = room_chosen.number if person.name == name}
  end

  def find_room_of_type(input_type)
    available_room = @rooms.detect {|room| room.type == input_type && room.status == "Available"}
    return available_room
  end


  def occupied?(room_number)
    chosen_room = @rooms.select {|room| room.number == room_number}
    return true if chosen_room[0].status == "Occupied"
    return false 
  end

  def check_out(name)
    guest = @guests.find {|person| person.name == name}
    @rooms.map {|room| room.status = "Available" if room.number == guest.room_booking}
    @guests.map {|person| person.room_booking = 'none' if person.name == name}
  end

  def day_revenue
    revenue = 0
    @rooms.each {|room| revenue += room.rate if room.status == "Occupied"}
    return revenue
  end

end