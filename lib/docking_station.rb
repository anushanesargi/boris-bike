require_relative 'bike'

class DockingStation
  
  attr_reader :bike
  
  def initialize
    @capacity = 20
    @bike = []
  end

  def release_bike
    fail 'No bikes available' if @bike.length == 0
    @bike.pop
  end

  def dock(bike)
    fail 'full' if @bike.length >= @capacity
    @bike << bike
  end

    
end


# docking_station = DockingStation.new
# bike = Bike.new
# 21.times { 
#   docking_station.dock(bike) 
# }
# puts docking_station.bike
