class Room
  attr_reader :number, :type
  attr_accessor :status

  def initialize(number, type)
    @number = number
    @type = type
    @status = 'Available'
  end


end
