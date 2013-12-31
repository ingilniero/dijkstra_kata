module Dijkstra
  class Graph

    def link(node_a, node_b, distance)
        node_a.add_neighbour(node_b, distance)
        node_b.add_neighbour(node_a, distance)
    end
  end
end
