module Geometry
  class Triangle
    attr_accessor :sideA, :sideB, :sideC

    def initialize(side1, side2, side3)
      @sideA = side1.to_f
      @sideB = side2.to_f
      @sideC = side3.to_f
    end

    def perimeter
      @sideA + @sideB + @sideC
    end

    def area
      p = self.perimeter / 2
      Math.sqrt(p * (p - @sideA) * (p - @sideB) * (p - @sideC))
    end

    def angles 

    end

    def valid?
      (sideA < sideB + sideC) && (sideB < sideA + sideC) && (sideC < sideA + sideB)
    end

  end

  class Rectangle
    attr_accessor :length, :width

    def initialize(length, width)
      @length = length.to_f
      @width = width.to_f
    end

    def perimeter
      @length + @width
    end

    def area
      @length * @width
    end
  end

  class Circle
  end
end