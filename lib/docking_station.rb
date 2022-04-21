require_relative "bike.rb"

class DockingStation

  attr_reader :bikes

  def initialize

    @bikes = []

  end
  
  def release_bike

    if @bikes.empty?
      raise StandardError
    end

  end


  def dock_bike(bike)
    
    bike = Bike.new
    @bikes << bike

  end

end