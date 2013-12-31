module Dijkstra
  class Node
    attr_reader :name
    attr_accessor :weight

    INFINITY = 1000

    def initialize(name)
      @name = name
      @weight = INFINITY
    end

  end
end
