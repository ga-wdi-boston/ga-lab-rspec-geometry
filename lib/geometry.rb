require 'pry'

module Geometry

  class Triangle
    attr_accessor :a, :b, :c

    def initialize(a,b,c)
      @a = a
      @b = b
      @c = c
    end

    def perimeter
      @a + @b + @c
    end

    def area
      perim = (self.perimeter/2)
      num_to_sqrt = perim * (perim - @a) * (perim - @b) * (perim - @c)
      Math.sqrt(num_to_sqrt)
    end

#Checking for Triangle Validity a + b > c

  def validity 
    if @a + @b <= @c || @c + @a <= @b || @b + @c <=@a
      puts "These is not a valid triangle, please make sure 2 sides are greater than the addition of one."
      return false 
    else 
      return true 
    end 
  end 
end   


  class Rectangle
    attr_accessor :a ,:b

    def initialize(a,b)
      @a = a
      @b = b
    end 

    def perimeter
      2*(@a + @b)
    end 

    def area
      @a * @b
    end 
  end 

  class Circle 
    attr_accessor :a 

    def initialize(a)
      @a = a.to_i
    end 

    def circumference 
      2 * Math::PI * @a
    end 

    def area
      Math::PI * (@a**2)
    end 

  end 

end


#binding.pry 
