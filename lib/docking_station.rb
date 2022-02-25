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
      next if b.condition == "broken"
        @bikes = @bikes - [b]
        return b
        break
      end
    
  end

  def dock(bike, bike_condition = "good")
    full?
    if bike_condition == "broken"
      bike.condition = "broken"
    end
    @bikes << bike
  end

  private

  # def broken(bike)
  #   if bike.condition == "broken"
  #     return "broken"
  #   end
  # end

  def empty?
    fail 'No bikes available' unless @bikes.length > 0
  end

  def full?
    fail 'full' if @bikes.length >= @DEFAULT_CAPACITY
  end
    
end
