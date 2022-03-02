require_relative 'garage'
require_relative 'bike'
require_relative 'docking_station'

class Van

    def initialize
        @bikes_in_van = []
    end

    def picked_up_bikes(bike)
        @bikes_in_van << bike
    end
    
    def in_van
        @bikes_in_van
    end

end