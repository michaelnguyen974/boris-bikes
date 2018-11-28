require_relative 'bike'

class Dockingstation
  attr_reader :bike

  def release_bike
  	bike = Bike.new
  end

  def dock(bike)
  	@bike = bike
  end

end

docking_station = Dockingstation.new
bike = docking_station.release_bike
bike.working?

