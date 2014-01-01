module Dijkstra
  class Algorithm
    def calculate_node_weights(source_node, end_node)
      source_node.weight = 0
      visit(source_node, end_node)
    end

    def shortest_path_for(node, nodes =  [])
      return unless node
      nodes << node.name
      shortest_path_for(node.reference_node, nodes)
      nodes.reverse
    end

    private

    def visit(node, end_node)
      return if node == end_node
      update_weights(node)
      node.mark_as_visited
      visit(node.next_node, end_node)
    end

    def update_weights(node)
      node.neighbours.each { |neighbour| neighbour.update_weight(node) }
    end
  end
end
