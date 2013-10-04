require 'JSON'
module Geometry

  class Triangle
    attr_accessor :a, :b, :c

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end

    def perimeter
      @a + @b + @c
    end

    def area
      half_perim = (@a + @b + @c) / 2
      area = Math.sqrt(half_perim * (half_perim - @a) * (half_perim - @b) * (half_perim - @c))
      return area.round(2)
    end

    def calc_angle(x, y, z)
      cos_angle_x = (y ** 2 + z ** 2 - x ** 2) / (2 * y * z).to_f
      angle = Math.acos(cos_angle_x) * 180 / Math::PI
      return angle.round(2)
    end

    def angles
      angles = Array.new
      angles.insert(0, calc_angle(@a, @b, @c), calc_angle(@b, @a, @c), calc_angle(@c, @b, @a))
      return angles
    end

    def valid?
      @a + @b > @c && @b + @c > @a && @c + @a > @b ? true : false
    end
  end

  class Circle
    attr_accessor :radius

    def initialize(radius)
      @radius = radius
    end

    def circumfrence
      (@radius * 2 * Math::PI).round(2)
    end

    def area
      (@radius ** 2 * Math::PI).round(2)
    end
  end

  class Rectangle
    attr_accessor :length, :width

    def initialize(length, width)
      @length = length
      @width = width
    end

    def area
      length * width
    end

    def perimeter
      2 * length + 2 * width
    end
  end

end