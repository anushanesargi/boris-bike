require 'vans'

describe Van do
    it "should return the docked bike to the docking station" do
        van = Van.new
        bike = Bike.new("broken")
        garage = Garage.new
        station = DockingStation.new(20, garage)
        station.dock(bike)
        station.release_bike
        garage.repair
        garage.call_van(van)
        expect(van.in_van).to eq bike
    end

end

