require_relative '../../lib/change_direction.rb'
require_relative '../../lib/state.rb'

describe ChangeDirection do

  let(:state) { instance_double(State) }
  let(:x_coord) { 0 }
  let(:y_coord) { 0 }

  let(:initial_north) { State.new(0, 0, 'NORTH') }
  let(:initial_west) { State.new(0, 0, 'WEST') }

  let(:north_turn_left_result) { 'WEST' }
  let(:north_turn_right_result) { 'EAST' }
  let(:west_turn_left_result) { 'NORTH' }

  let(:north_turn_left) { described_class.new.turn(:left, initial_north) }
  let(:north_turn_right) { described_class.new.turn(:right, initial_north) }
  let(:west_turn_right) { described_class.new.turn(:right, initial_west) }

  it 'should turn left NORTH->WEST' do
    north_turn_left
    expect(initial_north.direction).to eq(north_turn_left_result)
  end

  it 'should turn right NORTH->EAST' do
    north_turn_right
    expect(initial_north.direction).to eq(north_turn_right_result)
  end

  it 'should turn left WEST->NORTH' do
    west_turn_right
    expect(initial_west.direction).to eq(west_turn_left_result)
  end

end