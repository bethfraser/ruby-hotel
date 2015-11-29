class Chain

attr_reader :name, :hotels

def initialize(name)
  @name = name
  @hotels = []
end

def add_hotels(*names)
  @hotels << names
  @hotels.flatten!
end

def total_day_revenue
  revenue = 0
  @hotels.each {|hotel| revenue += hotel.day_revenue}
  return revenue  
end

end
