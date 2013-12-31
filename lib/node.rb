module Dijkstra
  class Node
    attr_reader :name, :neighbours
    attr_accessor :weight, :visited

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

  end
end
