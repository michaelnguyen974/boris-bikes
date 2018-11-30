require_relative 'bike'

class Dockingstation
  attr_reader :multiple_bike

  def initialize
    @multiple_bike = []
  end
  
  def release_bike
    fail "No bikes available" if @multiple_bike.empty?
    @multiple_bike.pop
  end

  def dock(bike)
    fail "station is full" if @multiple_bike.count >= 20
    @multiple_bike << bike
  end
end

# docking_station = Dockingstation.new
# bike = docking_station.release_bike
# bike.working?

