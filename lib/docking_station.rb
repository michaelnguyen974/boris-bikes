require_relative 'bike'

class Dockingstation
  attr_reader :bike

  def dock(bike)
    fail "station is full" if @bike 
    @bike = bike
  end
  
  def release_bike
    fail "No bikes available" unless @bike
    @bike

    # << bike

  end
end

# docking_station = Dockingstation.new
# bike = docking_station.release_bike
# bike.working?

