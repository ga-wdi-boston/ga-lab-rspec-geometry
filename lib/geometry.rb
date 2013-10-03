# class Triangle
# attr_accessor :side_a, :side_b, :side_c
# include Math
require 'pry'

module Geometry
  class Triangle
    attr_accessor :a, :b, :c

    def initialize(a,b,c)
      @a = a.to_f
      @b = b.to_f
      @c = c.to_f
    end

    def perimeter
      @a + @b + @c
    end

    def area
      perim = (@a+@b+@c)/2
      num = perim * ((perim - @a) * (perim - @b) * (perim - @c))
     Math.sqrt(num)
    end

    # def angles(@side_a, @side_b, @side_c)#array
    #    Math::cos**-1 [(@side_c**2 - @side_a**2 - @side_b**2) / (2 * @side_a * @side_b)]
    # end

    def valid?
      if (@a+@b>@c) && (@b+@c>@a) && (@c+@a>@b)
        return true
      else
        return false
      end
    end
  end

  class Rectangle
    attr_accessor :length, :width

    def initialize(length, width)
      @length = length
      @width = width
    end

    def perimeter
      @length + @length + @width + @width
    end

    def area
     @length * @width
    end
  end

  class Circle
    attr_accessor :radius

    def initialize(radius)
      @radius = radius
    end

    def circ
      @radius * 2 * Math::PI 
    end
  end

end
# end



# class Rectangle
#   attr_accessor :length, :width

#   def initialize(@length, @width)
#     @length = length.to_i
#     @width = width.to_i
#   end

#   def perimeter(@length, @width)
#     (2 * @length) + (2 * @width)
#   end

#   def area(@length, @width) 
#     @length * @width
#   end

# end



# class Circle
#   include Math
#   attr_accessor :radius

#   def initialize(@radius)
#     @radius = radius
#   end
  
#   def circumference(@radius)
#     Math::PI * @radius * 2
#   end

# end