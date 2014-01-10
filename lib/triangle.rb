module Geometry
  class Triangle
    attr_accessor :sideA, :sideB, :sideC

    def initialize(sideA, sideB, sideC)
      @sideA = sideA
      @sideB = sideB
      @sideC = sideC
    end

    def perimeter
      @sideA + @sideB + @sideC
    end

    def area

    end

    def angles
    end

    def valid?
    end
  end
end
