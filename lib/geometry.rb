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
end


########################################
# module Geometry 
# 		class Triangle 
# 			Perimeter @sideA , @sideB, @sideC
# 			Area
#       valid? 

# 		class Rectangle
# 			Perimeter  @sideA, @sideB, @sideC
# 			Area 

# 		class Circle 
# 			Circumference  @radius 
# 			Area 

#####################################
# require 'pry'

# module Geometry 
# 	# Geometry::Triangle
# 	class Triangle 
# 		attr_accessor :sideA , :sideB, :sideC

# 		def initialize(sideA, sideB, sideC)
# 		 @sideA = sideA
# 		 @sideB = sideB
# 		 @sideC = sideC
# 		end

# 		def perimeter
# 			p = sideA * sideB * sideC
# 		end 
# 	end 
# 	class Rectangle 
# 		attr_accessor :length , :width 

# 	end 

# 	class Cirlce
# 		attr_accessor :radius

# 	end 


# end 

# #binding.pry 
