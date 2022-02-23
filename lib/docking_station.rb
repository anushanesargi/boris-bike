require_relative 'bike'

class DockingStation
    attr_reader :bike
    
    def initialize(bike)
        @bike = bike
    end
        
    def release_bike
        @bike
    end

end


