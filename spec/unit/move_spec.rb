require_relative '../../lib/state.rb'
require_relative '../../lib/move.rb'

describe Move do

  let(:stdout) { instance_double(IO) }

  let(:north_start) { State.new(0, 0, 'NORTH') }
  let(:north_fall) { State.new(4, 4, 'NORTH') }
  let(:north_move) { {x: 0, y: 1} }

  let(:east_start) { State.new(0, 0, 'EAST') }
  let(:east_move) { {x: 1, y: 0} }

  let(:south_start) { State.new(4, 4, 'SOUTH') }
  let(:south_move) { {x: 4, y: 3} }

  let(:west_start) { State.new(4, 4, 'WEST') }
  let(:west_move) { {x: 3, y: 4} }

  it 'should move 1 space north' do
    described_class.new.execute(north_start)
    expect(north_start.location).to eq(north_move)
  end

  it 'should move 1 space east' do
    described_class.new.execute(east_start)
    expect(east_start.location).to eq(east_move)
  end

  it 'should move 1 space south' do
    described_class.new.execute(south_start)
    expect(south_start.location).to eq(south_move)
  end

  it 'should move 1 space west' do
    described_class.new.execute(west_start)
    expect(west_start.location).to eq(west_move)
  end

  it 'should not move if the robot will fall' do
    expect{described_class.new.execute(north_fall)}.to output("Cannot Move Further - Robot will fall\n").to_stdout
  end


end