module Geometry
  class Triangle
    attr_accessor :side1, :side2, :side3

    def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
    end

    def perimeter(side1, side2, side3)
      side1 + side2 + side3
    end

    def area(side1, side2, side3)

    end
  end

  class Rectangle

  end

  class Circle
  end
end