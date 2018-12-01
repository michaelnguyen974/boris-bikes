require "bike"
require 'docking_station'
describe Bike do 
	 
	it { is_expected.to respond_to :working? }
 	it { is_expected.to respond_to :broken? }
	
 it "reported broken" do
	  subject.report_broken
	  expect(subject).to be_broken
	end
	# it 'bike is broken so cannot be released from dock' do 
	# 	multiple_bike = Bike.new
	# 	subject.report_broken
	# 	subject.dock(Bike.new)
	# 	subject.release_bike
	# 	expect(subject.release_bike).to raise_error "bike is broken so cannot be docked"
	# end
end