module Dijkstra
  class Neighbour
    attr_reader :node, :distance

    def initialize(node, distance)
      @node = node
      @distance = distance
    end
  end
end