require 'docking_station'

describe DockingStation do
    it "responds to method release_bike" do
        expect(subject).to respond_to('release_bike')
    end

    it "gets a bike and expects it to work" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to be_working
    end

    it "takes a bike and expects it can dock" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it "returns docked bike" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bikes).to eq [bike]        
    end

    describe "release bike error" do
        it "raises an error when there are no bikes available" do
            bike = Bike.new
            expect { subject.DEFAULT_CAPACITY.times { subject.release_bike } }.to raise_error 'No bikes available'
        end
    end

    describe ".dock error" do
        it ".dock raises an error when it's at the capacity of 20 bikes" do
            bike = Bike.new
            expect { (subject.DEFAULT_CAPACITY + 1).times { subject.dock(bike) } }.to raise_error 'full'
        end
    end

    describe "set capacity" do
        it "sets a default capacity of 20" do
            expect(subject.DEFAULT_CAPACITY).to eq (20)
        end

        it "sets a default capacity of 20" do
            station = DockingStation.new(25)
            expect(station.DEFAULT_CAPACITY).to eq (25)
        end
    end


end