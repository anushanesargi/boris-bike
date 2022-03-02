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
    
    # mocking the pervious test case
    it "should receive broken bikes from docking station" do
        garage = Garage.new
        bike = double(:Bike)
        station = double(:DockingStation)
        allow(station).to receive(:dock).and_return bike
        allow(station).to receive(:release_bike)
        garage.to_repair(bike)
        expect(garage.in_garage).to eq [bike]
    end

    it "should send the repaired bikes to the garage" do
        bike = Bike.new("broken")
        garage = Garage.new
        station = DockingStation.new(capacity = 20, garage = garage)
        station.dock(bike)
        station.release_bike
        garage.repair(bike)
        expect(garage.in_garage).to eq []
    end


end
