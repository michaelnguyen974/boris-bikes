require_relative 'bike'

class Dockingstation
  attr_reader :multiple_bike
  @@capacity = 20
  def initialize
    @multiple_bike = []
  end
  
  def release_bike
    fail "No bikes available" if @multiple_bike.empty?
    @multiple_bike.pop
  end

  def dock(bike)
    fail "station is full" if full?
    @multiple_bike << bike
  end

private
    def full?
      @multiple_bike.count >= @@capacity
    end

    def empty?
      @multiple_bike.empty?
    end 
end

# docking_station = Dockingstation.new
# bike = docking_station.release_bike
# bike.working?

