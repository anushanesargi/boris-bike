require 'docking_station'

describe DockingStation do
    it "responds to method release_bike" do
        expect(subject).to respond_to('release_bike')
    end

    it "takes a bike and expects it can dock" do
      bike = Bike.new("good")
      expect(subject.dock(bike)).to eq [bike]
    end

    it "returns docked bike" do
        bike = Bike.new("good")
        subject.dock(bike)
        expect(subject.bikes).to eq [bike]        
    end

    describe "release bike error" do
        it "raises an error when there are no bikes available" do
            bike = Bike.new("good")
            expect { subject.DEFAULT_CAPACITY.times { subject.release_bike } }.to raise_error 'No bikes available'
        end
    end

    describe ".dock error" do
        it ".dock raises an error when it's at the capacity of 20 bikes" do
            bike = Bike.new("good")
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

    describe ".release_bike" do

        it "Does not release a broken bike" do
            bike3 = Bike.new("good")
            subject.dock(bike3)
            bike1 = Bike.new("broken")
            subject.dock(bike1)
            bike2 = Bike.new("good")
            subject.dock(bike2)
            expect(subject.release_bike).to eq bike3
            expect(subject.release_bike).to eq bike2
        end
    end


end