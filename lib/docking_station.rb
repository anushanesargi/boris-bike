require_relative 'bike'

class DockingStation
  
  attr_reader :bikes, :DEFAULT_CAPACITY
  
  
  def initialize(capacity = 20)
    @DEFAULT_CAPACITY = capacity
    @bikes = []
  end

  def release_bike
    empty?
    @bikes.each do |b|
      next if b.working? == false
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
