require_relative 'bike'

class DockingStation
  
  attr_reader :bikes, :DEFAULT_CAPACITY
  
  
  def initialize
    @DEFAULT_CAPACITY = 20
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
    fail 'full' if @bikes.length >= @DEFAULT_CAPACITY
  end
    
end
