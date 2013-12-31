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
end
