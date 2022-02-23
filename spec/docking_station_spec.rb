require 'docking_station'

describe DockingStation do
  it 'responds to method release_bike' do
    expect(subject).to respond_to :release_bike
  end   

  it 'gets bike and expects bike to be working' do
    bike = DockingStation.new.release_bike
    expect(bike).to be_working
  end
end