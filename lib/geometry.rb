module Geometry
  class Triangle
    attr_accessor :a, :b, :c

    def initialize(side1, side2, side3)
      @a = side1
      @b = side2
      @c = side3
    end

    def perimeter
      @a + @b + @c
    end

    def area
      p = self.perimeter / 2
      Math.sqrt(p * (p - @a) * (p - @b) * (p - @c))
    end
  end

  class Rectangle

  end

  class Circle
  end
end