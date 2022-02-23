require_relative 'bike'

class DockingStation
  
  attr_reader :bike
  
  def release_bike
    fail 'No bikes available' unless bike
    @bike
  end

  def dock(bike)
    @bike = bike
    # @bike_array = []
    # @bike_array << @bike
    # return @bike
  end
    
end


