require 'lib/node'

describe Dijkstra::Node do
  subject do
    Dijkstra::Node.new 'a'
  end

  it 'has a name' do
    expect(subject.name).to eq 'a'
  end
end
