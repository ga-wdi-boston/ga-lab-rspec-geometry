module Geometry
  class Triangle
    def initialize(sideA, sideB, sideC)
      @sideA, @sideB, @sideC = [sideA, sideB, sideC].sort
    end

    def perimeter
      @sideA + @sideB + @sideC
    end

    def area
      half_p = perimeter.to_f / 2
      Math.sqrt(half_p * (half_p - @sideA) * (half_p - @sideB) * (half_p - @sideC))
    end

    def angles
      [
        angle_opposite_side(@sideA, @sideB, @sideC),
        angle_opposite_side(@sideB, @sideA, @sideC),
        angle_opposite_side(@sideC, @sideA, @sideB)
      ]
    end

    def valid?
      @sideA + @sideB > @sideC
    end

    private

    def angle_opposite_side(target_side, sideB, sideC)
      Math.acos(
        (sideB ** 2 + sideC ** 2 - target_side ** 2).to_f / (2 * sideB * sideC)
      ) * (180 / Math::PI)
    end
  end
end
