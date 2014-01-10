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

    def angles(type)
      @angles = [30, 60, 90] if type == 'right'
      @angles = [45, 45, 90] if type == 'isosceles'
      @angles = [60, 60, 60] if type == 'equilateral'

      @angles
    end

    def valid?
    end
  end
end
