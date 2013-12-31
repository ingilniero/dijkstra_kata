module Dijkstra
  class Algorithm
    def shortest_path_for(source_node, end_node)
      source_node.weight = 0
      visit(source_node, end_node)
    end

    private

    def visit(node, end_node)
      return if node == end_node
      update_weights(node)
      node.mark_as_visited
    end

    def update_weights(node)
      node.neighbours.each { |neighbour| neighbour.update_weight(node) }
    end
  end
end
