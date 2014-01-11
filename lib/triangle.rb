module Geometry
  class Triangle
    def initialize(sideA, sideB, sideC)
      @sideA, @sideB, @sideC = sideA, sideB, sideC
    end

    def perimeter
      @sideA + @sideB + @sideC
    end
  end
end
