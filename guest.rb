class Guest

  attr_reader :name 
  attr_accessor :room_booking

  def initialize(name)
    @name = name
    @room_booking = 'none'
  end


end