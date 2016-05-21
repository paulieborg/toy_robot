require_relative '../../lib/state.rb'
require_relative '../../lib/report.rb'

describe Report do

  let(:current_state) { State.new(0, 0, 'NORTH') }

  it 'should output the state' do
    expect{described_class.new.execute(current_state)}.to output("Output: 0,0,NORTH\n").to_stdout
  end


end