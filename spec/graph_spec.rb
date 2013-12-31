require 'lib/graph.rb'

describe Dijkstra::Graph do
  describe '#link' do
    let(:node_a) { Dijkstra::Node.new 'a' }
    let(:node_b) { Dijkstra::Node.new 'b' }

    before do
      subject.link(node_a, node_b, 5)
    end

    it 'adds node "b" to the neighbours of node "a"' do
      expect(node_a.neighbours.map(&:node)).to eq [ node_b ]
    end

    it 'adds node "a" to the neighbours of node "b"' do
      expect(node_b.neighbours.map(&:node)).to eq [ node_a ]
    end
  end

end
