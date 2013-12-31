require 'lib/node'

describe Dijkstra::Node do
  subject do
    Dijkstra::Node.new 'a'
  end

  let(:node_b) { Dijkstra::Node.new 'b' }
  let(:node_c) { Dijkstra::Node.new 'c' }

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
    before { subject.add_neighbour(node_b, 4) }

    it 'adds the node as a neighbour object' do
      expect(subject.neighbours.map(&:node)).to eq [node_b]
    end
  end

  describe '#mark_as_visited' do
    before { subject.mark_as_visited }

    it 'updates the state of visited to true' do
      expect(subject.visited).to be_true
    end
  end

  describe '#unvisited_neighbours' do

    before do
      subject.add_neighbour(node_b, 4)
      subject.add_neighbour(node_c, 3)
      node_b.mark_as_visited
    end

    it 'returns an array of the unvisited neighbours' do
      expect(subject.unvisited_neighbours.map(&:node)).to eq [node_c]
    end
  end

  describe '#get_next_node' do
    before do
      node_b.weight = 2
      node_c.weight = 4
      subject.add_neighbour(node_b, 3)
      subject.add_neighbour(node_c, 4)
    end

    it 'retrieves the node with the smallest weight' do
      expect(subject.next_node).to eq node_b
    end
  end
end
