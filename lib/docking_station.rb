require_relative 'bike'

class Dockingstation

  def release_bike
  	bike = Bike.new
  end

end

docking_station = Dockingstation.new
bike = docking_station.release_bike
bike.working?

