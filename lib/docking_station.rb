require_relative "bike.rb"

class DockingStation

  attr_accessor :bikes


  def initialize

    @bikes = []

  end
  
  def release_bike

    if @bikes.empty?
      raise StandardError
    else
      Bike.new 
    end

  end

  def full?
    if @bikes.length >= 20
      true
    end 
  end

  

  def dock_bike(bike)
    
    if @bikes.full?
      raise StandardError
    else
      bike = Bike.new
      @bikes << bike
    end

  end

end