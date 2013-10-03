require 'pry'

module Geometry
  class Triangle
    attr_accessor :a, :b, :c

    def initialize(a,b,c)
      @a = a
      @b = b
      @c = c
    end

    def tri_perimeter
      @a + @b + @c
    end

    def tri_area
      perim = (self.perimeter/2)
      num_to_sqrt = perim * (perim - @a) * (perim - @b) * (perim - @c)
      Math.sqrt(num_to_sqrt)
    end
    
  end
  class Rectangle
    attr_accessor :e ,:f 
    def initialize(e,f)
      @e = a
      @f = b
    end 

    def rec_perimeter
      2*(@e + @f)
    end 

    def rec_area
      @e * @f
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
