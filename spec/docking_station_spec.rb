require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do

  let(:docking_station) { DockingStation.new }
  let(:bike) { Bike.new }

  it { is_expected.to respond_to :release_bike }

  it "Gets a bike and checks it's working" do
    #bike = subject.release_bike
    expect(bike.working?).to eq(true)

  end
  
  it "docks bike" do

    #bike = Bike.new
    expect(subject.dock_bike(bike))

  end

  it "see whether there are any docked bikes" do

    empty_docking_station = DockingStation.new
    expect { subject.release_bike }.to raise_error(StandardError)

  end

end