require_relative '../../lib/state.rb'

describe State do

  let(:x_coord) { 0 }
  let(:y_coord) { 0 }
  let(:initial_direction) { 'NORTH' }

  let(:x_coord_fall) { 6 }
  let(:y_coord_fall) { -1 }

  subject { described_class.new(x_coord, y_coord, initial_direction) }

  it 'should initialize a state object' do
    expect(subject).to be_a_kind_of(described_class)
  end

  it 'should return false if the robot won\'t fall' do
    expect(described_class.new(x_coord, y_coord, initial_direction).falling?).to be(false)
  end

  it 'should test if the robot will fall if a coordinate is > 4' do
    expect(described_class.new(x_coord_fall, y_coord, initial_direction).falling?).to be(true)
  end

  it 'should test if the robot will fall if a coordinate is < 0' do
    expect(described_class.new(x_coord, y_coord_fall, initial_direction).falling?).to be(true)
  end

end
