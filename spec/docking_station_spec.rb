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
      expect(subject.dock(bike)).to eq bike
    end

    it "returns docked bike" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike        
    end

    it "raises error when empty" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
    end

    describe "release bike error" do
        it "raises an error when there are no bikes available" do
            expect { subject.release_bike }.to raise_error 'No bikes available'
        end
    end

    describe ".dock erro" do
        it ".dock raises an error when full" do
            bike = Bike.new
            # subject.dock(bike)
            expect { subject.dock(bike) }.to raise_error 'full'
        end
    end



end