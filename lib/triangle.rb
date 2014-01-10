module Geometry
  class Triangle
    attr_accessor :sideA, :sideB, :sideC, :angles

    def initialize(sideA, sideB, sideC)
      @sideA = sideA
      @sideB = sideB
      @sideC = sideC
      @angles = []
    end

    def perimeter
      @sideA + @sideB + @sideC
    end

    def area(height, base)
      0.5 * height * base
    end

    def angles

    end

    def valid?
    end
  end
end
