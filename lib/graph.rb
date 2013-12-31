module Dijkstra
  class Graph

    def link(node_a, node_b, distance)
        node_a.neighbours << Dijkstra::Neighbour.new(node_b, distance)
        node_b.neighbours << Dijkstra::Neighbour.new(node_a, distance)
    end
  end
end
