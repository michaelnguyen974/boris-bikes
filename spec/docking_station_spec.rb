require "docking_station"

describe Dockingstation do
  it { is_expected.to respond_to :release_bike }

  it "releases the bike" do
  	bike = Bike.new
  	expect(bike).to be_working
  end

  # it { is_expected.to respond_to :dock }
  	
  it { is_expected.to respond_to(:dock).with(1).arguments }
 
 	it "This allows us to dock our bike" do
 	bike = Bike.new
 		expect(subject.dock(bike)).to eq bike
 end
end
