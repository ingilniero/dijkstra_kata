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
  end
end
