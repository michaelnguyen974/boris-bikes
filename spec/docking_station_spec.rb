require "docking_station"

describe Dockingstation do
  it { is_expected.to respond_to :release_bike }

  it "releases the bike" do
  	bike = Bike.new
  	expect(bike).to be_working
  end

  # it { is_expected.to respond_to :dock }
  	
	# it "dock our bike at the docking station" do
   # end
end
