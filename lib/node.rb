module Dijkstra
  class Node
    attr_reader :name
    attr_accessor :weight, :visited

    INFINITY = 1000

    def initialize(name)
      @name = name
      @weight = INFINITY
      @visited = false
    end

  end
end
