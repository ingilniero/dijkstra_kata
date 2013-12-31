module Dijkstra
  class Node
    attr_reader :name
    attr_accessor :weight, :visited, :neighbours

    INFINITY = 1000

    def initialize(name)
      @name = name
      @weight = INFINITY
      @visited = false
      @neighbours = []
    end

  end
end
