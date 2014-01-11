module Geometry
  class Triangle
    def initialize(sideA, sideB, sideC)
      @sideA, @sideB, @sideC = sideA, sideB, sideC
    end

    def perimeter
      @sideA + @sideB + @sideC
    end

    def area
      half_p = perimeter.to_f / 2
      Math.sqrt(half_p * (half_p - @sideA) * (half_p - @sideB) * (half_p - @sideC))
    end
  end
end
