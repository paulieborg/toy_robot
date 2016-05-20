require_relative '../../lib/place.rb'
require_relative '../../lib/state.rb'

describe Place do

  let(:stdout) { instance_double(IO) }
  let(:state) { instance_double(State) }
  let(:x_coord) { 0 }
  let(:y_coord) { 0 }
  let(:initial_direction) { 'NORTH' }

  let(:place) { described_class.new(x_coord, y_coord, initial_direction, stdout) }

  before(:each) do
    allow(stdout).to receive(:puts)
    allow(State).to receive(:new).with(x_coord, y_coord, initial_direction).and_return(state)
  end

  it 'should be initialized with coordinates and direction' do
    expect(place).to be_an_instance_of(described_class)
  end

  it 'should create a state class' do
    allow(state).to receive(:falling?)
    expect(State).to receive(:new).with(x_coord, y_coord, initial_direction).and_return(state)
    place.execute
  end

  it 'should print a message if the boundary is exceeded' do
    allow(state).to receive(:falling?).and_return(true)
    expect(stdout).to receive(:puts).with('You cannot place the robot outside 5x5 dimensions (start at 0)')
    place.execute
  end


end