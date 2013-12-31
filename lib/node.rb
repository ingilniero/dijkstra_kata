require 'neighbour'

module Dijkstra
  class Node
    attr_reader :name, :neighbours, :visited
    attr_accessor :weight

    INFINITY = 1000

    def initialize(name)
      @name = name
      @weight = INFINITY
      @visited = false
      @neighbours = []
    end

    def add_neighbour(node, distance)
      @neighbours << Dijkstra::Neighbour.new(node, distance)
    end

    def mark_as_visited
      @visited = true
    end

    def unvisited_neighbours
      neighbours.select { |neighbour| neighbour.visited? == false }
    end
  end
end
