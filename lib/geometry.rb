

module Geometry
  class Triangle
    attr_accessor :side_a, :side_b, :side_c

    def initialize(side_a, side_b,side_c)
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
    end

    def perimeter
      @side_a + @side_b + @side_c
    end

    def area
      perim = (self.perimeter/2)
      Math.sqrt(perim * (perim - @side_a) * (perim - @side_b) * (perim - @side_c)).round( 1)
    end

    def law_of_cosines(a, b, c)
      Math.acos((a**2 + b**2 - c**2) / (2*a*b)) * (180 / Math::PI)
    end

    def angles 
      [ law_of_cosines(@side_a, @side_b, @side_c).round(1),
        law_of_cosines(@side_c, @side_a, @side_b).round(1), 
        law_of_cosines(@side_b, @side_c, @side_a).round(1) ]
    end
    
  end

  class Rectangle
    attr_accessor :length, :width

    def initialize(length, width)
      @length = length.to_f
      @width = width.to_f
    end

    def perimeter
      2 * (@length + @width)
    end

    def area
      @length * @width
    end
  end

  class Circle
    attr_accessor :radius

    def initialize(radius)
      @radius = radius.to_f
    end

    def circumference
      2 * @radius * Math::PI
    end

    def area
      Math::PI * @radius ** 2
    end
  end

end
