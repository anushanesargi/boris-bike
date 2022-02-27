require 'garage'

describe Garage do
    it "should receive broken bikes from docking station" do
        bike = Bike.new("broken")
        garage = Garage.new
        station = DockingStation.new(capacity = 20, garage = garage)
        station.dock(bike)
        station.release_bike
        expect(garage.in_garage).to eq [bike]
    end

end
