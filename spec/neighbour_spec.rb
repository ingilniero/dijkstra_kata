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

  describe '#visited?' do
    context 'when the node is not visited' do
      it { expect(subject.visited?).to be_false }
    end

    context 'when the node is visited' do
      before { node_a.mark_as_visited }

      it { expect(subject.visited?).to be_true }
    end
  end

  describe '#update_distance' do
    let(:node_b) { Dijkstra::Node.new 'b' }

    context 'when the sum of the distance and the passed node\'s weight is lower than the current weight of its own node' do
      before do
        node_b.weight = 0
        subject.update_distance(node_b)
      end

      it 'sets the sum of the distance and the nodes\'s weight as the new weight for its node' do
        expect(subject.node.weight).to eq 4
      end
    end

    context 'when the sum of the distance and the passed node\'s weight is greather than the current weight of its own node' do
      before do
        node_b.weight = 0
        node_a.weight = 3
        subject.update_distance(node_b)
      end

      it 'does not modify the weight' do
        expect(subject.node.weight).to eq 3
      end
    end
  end

end
