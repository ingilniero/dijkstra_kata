require 'lib/node'

describe Dijkstra::Node do
  subject do
    Dijkstra::Node.new 'a'
  end

  it 'has a name' do
    expect(subject.name).to eq 'a'
  end

  it 'has an initial weight of INFINITY' do
    expect(subject.weight).to eq 1000
  end

  it 'has a visited state of false' do
    expect(subject.visited).to be_false
  end

  it 'has an array of neighbours' do
    expect(subject.neighbours).to eq []
  end

  describe '#add_neighbour' do
    let(:node_b) { Dijkstra::Node.new 'b' }

    before { subject.add_neighbour(node_b, 4) }

    it 'adds the node as a neighbour object' do
      expect(subject.neighbours.map(&:node)).to eq [ node_b ]
    end
  end

  describe '#mark_as_visited' do
    before { subject.mark_as_visited }

    it 'updates the state of visited to true' do
      expect(subject.visited).to be_true
    end
  end
end
