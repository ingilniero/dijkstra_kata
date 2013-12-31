module Dijkstra
  class Neighbour
    attr_reader :node, :distance

    def initialize(node, distance)
      @node = node
      @distance = distance
    end

    def visited?
      node.visited
    end

    def update_distance(source_node)
      sum = source_node.weight + distance
      if sum < node.weight
        node.weight = sum
      end
    end
  end
end
