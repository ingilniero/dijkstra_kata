require 'lib/neighbour'
require 'lib/node'

describe Dijkstra::Neighbour do
  let(:node_a) { Dijkstra::Node.new 'a' }

  subject do
    Dijkstra::Neighbour.new(node_a, 4)
  end

  it 'represents a node' do
    expect(subject.node).to eq node_a
  end

  it 'has a distance' do
    expect(subject.distance).to eq 4
  end
end
