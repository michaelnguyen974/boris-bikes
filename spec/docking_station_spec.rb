require "docking_station"
RSpec.describe Dockingstation do   
  before(:each) do
    @station = Dockingstation.new 
  end 

  it "does the bike work?" do
  	multiple_bike = Bike.new
  	expect(multiple_bike).to be_working
  end
  	
  it { is_expected.to respond_to(:dock).with(1).arguments }
 
 	it "This allows us to dock our bike" do
 	  multiple_bike = Bike.new
 		expect(@station.dock(multiple_bike)).to eq [multiple_bike] #Needs to equal an array of multiple_bike because we are inserting it into an array.
  end
 
 
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do 
    it "Does docking station release a bike" do
      multiple_bike = Bike.new 
      @station.dock(multiple_bike)
      expect(@station.release_bike).to eq multiple_bike
    end 

    it "Raises error when No bikes available" do 
      expect { @station.release_bike }.to raise_error "No bikes available"
    end 

    # it 'bike is broken so cannot be released from dock' do 
    # multiple_bike = Bike.new
    # subject.report_broken
    # subject.dock(Bike.new)
    # subject.release_bike
    # expect(subject.release_bike).to raise_error "bike is broken so cannot be docked"
    # end
  end

  describe 'dock' do
    it "Raises error when more than 20 bikes are docked" do
      Dockingstation::DEFAULT_CAPACITY.times{subject.dock(Bike.new)}
        expect { subject.dock(Bike.new) }.to raise_error "station is full"  
    end
  end
end

