require_relative 'bike'
require_relative 'docking_station'

class Garage

    def initialize
        @broken_bikes = []
    end

    def to_repair(bike)
        @broken_bikes << bike
        in_garage
    end

    def in_garage
        @broken_bikes
    end

    def repair
        @broken_bikes -= [@broken_bikes.last]
        in_garage
    end

    def call_van(van)
        van.picked_up_bikes(bike)
    end

end