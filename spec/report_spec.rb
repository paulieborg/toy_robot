require_relative '../lib/state.rb'
require_relative '../lib/report.rb'

describe Report do

  let(:stdout) { instance_double(IO) }
  let(:current_state) { State.new(0, 0, 'NORTH') }

  before(:each) do
    allow(stdout).to receive(:puts)
  end

  it 'should output the state' do
    expect(stdout).to receive(:puts).with('Output: 0,0,NORTH')
    described_class.new.execute(current_state, stdout)
  end


end