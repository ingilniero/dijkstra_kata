require 'lib/dijkstra.rb'

describe Dijkstra::Algorithm do
  let(:node_a) { Node.new 'a' }
  let(:node_h) { Node.new 'h' }


  it 'finds the shortest path for a given node pair' do
    subject.shortest_path_for(node_a, node_h)
  end
end
