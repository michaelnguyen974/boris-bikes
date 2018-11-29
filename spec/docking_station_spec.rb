require "docking_station"
RSpec.describe Dockingstation do   
  before(:each) do
    @station = Dockingstation.new 
  end 

  it "does the bike work?" do
  	bike = Bike.new
  	expect(bike).to be_working
  end
  	
  it { is_expected.to respond_to(:dock).with(1).arguments }
 
 	it "This allows us to dock our bike" do
 	  bike = Bike.new
 		expect(@station.dock(bike)).to eq bike
  end
 
 
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do 
    it "Does docking station release a bike" do
      bike = Bike.new 
      @station.dock(bike)
      expect(@station.release_bike).to eq bike
    end 
    it "Raises error when No bikes available" do 
      expect { @station.release_bike }.to raise_error "No bikes available"
    end 
  end

  describe 'dock' do
    it "Raises error when more than one bike is docked" do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error "station is full"
    end 
  end
end
