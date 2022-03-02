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

    def repair(bike)
        @broken_bikes -= [bike]
        in_garage
    end

end