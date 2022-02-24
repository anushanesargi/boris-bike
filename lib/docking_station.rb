require_relative 'bike'

class DockingStation
  
  attr_reader :bike
  
#   def intialize(capacity)
#     @bike = []
#   end

  def release_bike
    fail 'No bikes available' unless bike
    @bike
  end

  def dock(bike)
    @bike = bike
    fail 'full' if @bike
    
    
  end

    
end


