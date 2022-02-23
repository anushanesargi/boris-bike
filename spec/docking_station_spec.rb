require 'docking_station'

describe DockingStation do
    it "responds to method release_bike" do
        expect(subject).to respond_to('release_bike')
    end

    it "gets a bike and expects it to work" do
        bike = subject.release_bike
        expect(bike).to be_working
    end

    it "takes a bike and expects it can dock" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike  
    end

    it "returns docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike        
    end
end