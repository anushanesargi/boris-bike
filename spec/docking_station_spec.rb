require 'docking_station'

describe DockingStation do
    it "creates an object" do
        docking_station = DockingStation.new
    end
    
    it "responds to release_bike" do
        docking_station = DockingStation.new.respond_to?('release_bike')
    end

end