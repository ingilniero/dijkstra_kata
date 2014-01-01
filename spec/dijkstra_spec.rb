require 'lib/dijkstra'
require 'lib/node'
require 'lib/graph'

describe Dijkstra::Algorithm do
  let(:node_a) { Dijkstra::Node.new 'a' }
  let(:node_b) { Dijkstra::Node.new 'b' }
  let(:node_c) { Dijkstra::Node.new 'c' }
  let(:node_d) { Dijkstra::Node.new 'd' }
  let(:node_e) { Dijkstra::Node.new 'e' }
  let(:node_f) { Dijkstra::Node.new 'f' }

  let(:graph)  { Dijkstra::Graph.new }

  before do
    graph.link(node_a, node_b, 7)
    graph.link(node_a, node_c, 9)
    graph.link(node_b, node_c, 10)
    graph.link(node_b, node_d, 15)
    graph.link(node_a, node_f, 14)
    graph.link(node_c, node_f, 2)
    graph.link(node_c, node_d, 11)
    graph.link(node_f, node_e, 9)
    graph.link(node_d, node_e, 6)
  end

  describe '#shortest_path_for' do
    context 'in the first iteration' do
      before { subject.shortest_path_for(node_a, node_b) }

      it 'sets a weight of 0 for the source node' do
        expect(node_a.weight).to eq 0
      end

      it 'marks the first node as visited' do
        expect(node_a.visited).to be_true
      end

      it { expect(node_b.weight).to eq 7 }
      it { expect(node_c.weight).to eq 9 }
      it { expect(node_f.weight).to eq 14 }
    end

    context 'until reach node "e"' do
      before { subject.shortest_path_for(node_a, node_e) }

      it { expect(node_b.weight).to eq 7 }
      it { expect(node_c.weight).to eq 9 }
      it { expect(node_d.weight).to eq 20 }
      it { expect(node_e.weight).to eq 20 }
      it { expect(node_f.weight).to eq 11 }
    end
  end
end
