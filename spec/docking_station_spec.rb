require 'docking_station'

describe DockingStation do
    it "responds to method release_bike" do
        station = DockingStation.new(Bike.new)
        expect(station).to respond_to('release_bike')
    end

    it "gets a bike and expects it to work" do
        station = DockingStation.new(Bike.new)
        bike = station.release_bike
        expect(bike).to be_working
    end

    it "takes a bike and expects it can dock" do
        station = DockingStation.new(Bike.new)
        bike = station.release_bike
        expect(bike).to be_dock
    end

end