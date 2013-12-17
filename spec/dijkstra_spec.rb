require 'lib/dijkstra.rb'
require 'lib/node.rb'


describe Dijkstra::Algorithm do
  let(:node_a) { Dijkstra::Node.new 'a' }
  let(:node_h) { Dijkstra::Node.new 'h' }

  it 'finds the shortest path for a given node pair' do
    expect(subject.shortest_path_for(node_a, node_h)).to be_true
  end
end
