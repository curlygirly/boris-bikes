require 'docking_station'

feature 'member of public returns bike' do
  scenario 'bike cannot be docked when station is full' do
    capacity = DockingStation::DEFAULT_CAPACITY
    docking_station = DockingStation.new
    capacity.times{ docking_station.dock Bike.new }
    expect { docking_station.dock Bike.new }.to raise_error 'Docking station full'
  end
end