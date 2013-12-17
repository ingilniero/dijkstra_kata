require 'lib/dijkstra.rb'
require 'lib/node.rb'


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
    graph.link(node_c, node_g, 11)
    graph.link(node_f, node_e, 9)
    graph.link(node_d, node_e, 6)
  end

  it 'finds the shortest path for a given node pair' do
    expect(subject.shortest_path_for(node_a, node_f)).to be_true
  end
end
