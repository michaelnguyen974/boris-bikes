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
  end

  describe 'dock' do
    # it "Raises error when more than one bike is docked" do
    #   subject.dock(Bike.new)
    #   expect { subject.dock(Bike.new) }.to raise_error "station is full"
    # end 
    
    #Reason I had to get rid of the test above is because that limited the number of bikes allowed on the dock (more than 1) 
    it "Raises error when more than 20 bikes are docked" do
      20.times { subject.dock(Bike.new) }
        expect { subject.dock(Bike.new) }.to raise_error "station is full"  
    end
  end
end

#Run Rspec and you will get 4 failures, the first being that the bikes are now placed into an array
#We still only allow 1 bike to be allowed in our Rspec, thus we need to refactor that 
#The Rspec syntax subject is a special variable that refers to the object being tested.