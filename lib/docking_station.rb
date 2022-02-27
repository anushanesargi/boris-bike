require_relative 'bike'
require_relative 'garage'

class DockingStation
  
  attr_reader :bikes, :DEFAULT_CAPACITY
  
  
  def initialize(capacity = 20, garage = Garage.new)
    @DEFAULT_CAPACITY = capacity
    @bikes = []
    @garage = garage
  end

  def release_bike
    empty?
    
    @bikes.each do |b|
      if b.working? == false
        @garage.to_repair(b)
        next
      end
      @bikes = @bikes - [b]
      return b
      break
    end
    
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
