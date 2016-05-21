require_relative '../../lib/commands.rb'

describe Commands do

  let(:stdin) { instance_double(StringIO) }

  let(:place) { "PLACE 0,0,NORTH\n" }
  let(:move) { "MOVE\n" }
  let(:right) { "RIGHT\n" }
  let(:left) { "LEFT\n" }
  let(:report) { "REPORT\n" }
  let(:quit) { "quit\n" }
  let(:invalid) { "INVALID\n" }

  before(:each) do
    allow(stdin).to receive(:gets)
  end

  it 'should run the PLACE command and REPORT' do
    expect(stdin).to receive(:gets).and_return(place, report)
    expect{described_class.new(stdin)}.to output("Output: 0,0,NORTH\n").to_stdout
  end

  it 'should run the PLACE, MOVE command and REPORT' do
    expect(stdin).to receive(:gets).and_return(place, move, report)
    expect{described_class.new(stdin)}.to output("Output: 0,1,NORTH\n").to_stdout
  end

  it 'should run the PLACE, RIGHT command and REPORT' do
    expect(stdin).to receive(:gets).and_return(place, right, report)
    expect{described_class.new(stdin)}.to output("Output: 0,0,EAST\n").to_stdout
  end

  it 'should run the PLACE, LEFT command and REPORT' do
    expect(stdin).to receive(:gets).and_return(place, left, report)
    expect{described_class.new(stdin)}.to output("Output: 0,0,WEST\n").to_stdout
  end

  it 'should quit' do
    expect(stdin).to receive(:gets).and_return(quit)
    expect{described_class.new(stdin)}.to output('').to_stdout
  end

  it 'should rescue an error if PLACE has not been done' do
    allow_any_instance_of(IO).to receive(:puts).with('You need to PLACE first')
    expect(stdin).to receive(:gets).and_return(move)
    expect{described_class.new(stdin)}.to raise_error(NoMethodError)
  end

  it 'should tell you if you gave it an invalid command' do
    allow(stdin).to receive(:gets).and_return(invalid, quit)
    expect{described_class.new(stdin)}.to output("Invalid Command\n").to_stdout
  end
end


