require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do

  let(:docking_station) { DockingStation.new(bike) }
  let(:bike) { Bike.new }

  #it { is_expected.to respond_to :release_bike }

  it "Gets a bike and checks it's working" do
    bike = Bike.new
    expect(bike.working?).to eq(true)

  end
  
  it "docks bike" do

    bike = Bike.new
    expect(subject.dock_bike(bike))

  end

  it "see whether there are any docked bikes" do
    subject.bikes << bike 
    expect(subject.bikes).to eq [bike]

  end

  it "if releasing a bike when none docked throw error" do

    empty_docking_station = DockingStation.new
    expect { subject.release_bike }.to raise_error(StandardError)
  
  end

  it "if docking bike at full docking station, raise error" do

    bike = Bike.new
    docking_station = DockingStation.new
    20.times{subject.bikes << bike} 
    expect { subject.dock_bike(bike) }.to raise_error(StandardError)


  end

  it 'return true if docking station is full' do
    bike = Bike.new
    docking_station = DockingStation.new
    20.times{subject.bikes << bike} 
    expect(subject.full?).to eq(true) 
  end 

  

end