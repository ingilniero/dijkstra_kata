require 'lib/graph.rb'

describe Dijkstra::Graph do
  it 'has a link method' do
    expect(subject.respond_to?(:link)).to be_true
  end

end
