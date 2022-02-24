require_relative 'bike'

class DockingStation
  
  attr_reader :bikes
  
  def initialize
    @capacity = 20
    @bikes = []
  end

  def release_bike
    empty?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  private

  def empty?
    fail 'No bikes available' unless @bikes.length > 0
  end

  def full?
    fail 'full' if @bikes.length >= @capacity
  end
    
end
