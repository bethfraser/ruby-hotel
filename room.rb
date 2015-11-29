class Room
  attr_reader :number, :type, :rate
  attr_accessor :status

  def initialize(number, type, rate)
    @number = number
    @type = type
    @rate = rate
    @status = 'Available'
  end



end
