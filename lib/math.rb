class Triangle
attr_accessor :side_a, :side_b, :side_c
include Math

  def initialize(side_a, side_b, side_c)
    @side_a = side_a.to_i
    @side_b = side_b.to_i
    @side_c = side_c.to_i
  end

  def angles(@side_a, @side_b, @side_c)#array
     Math::cos**-1 [(@side_c**2 - @side_a**2 - @side_b**2) / (2 * @side_a * @side_b)]
  end

  def perimeter(@side_a, @side_b, @side_c)
    @side_a + @side_b + @side_c
  end

  def area(@side_a, @side_b, @side_c)
    p = (@side_a+@side_b+@side_c)/2
    Math.sqrt(p((p-@side_a)(p-@side_b)(p-@side_c)))
  end

  def valid?(@side_a, @side_b, @side_c)
    (@side_c**2) = ((@side_a**2) + (@side_c**2))
  end

end



class Rectangle
  attr_accessor :length, :width

  def initialize(@length, @width)
    @length = length.to_i
    @width = width.to_i
  end

  def perimeter(@length, @width)
    (2 * @length) + (2 * @width)
  end

  def area(@length, @width) 
    @length * @width
  end

end



class Circle
  include Math
  attr_accessor :radius

  def initialize(@radius)
    @radius = radius
  end
  
  def circumference(@radius)
    Math::PI * @radius * 2
  end

end