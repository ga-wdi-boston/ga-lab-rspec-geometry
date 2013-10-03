########################################
# module Geometry 
# 		class Triangle 
# 			Perimeter @sideA , @sideB, @sideC
# 			Area

# 		class Rectangle
# 			Perimeter  @sideA, @sideB, @sideC
# 			Area 

# 		class Circle 
# 			Circumference  @radius 
# 			Area 

#####################################
require 'pry'

module Geometry 

class Triangle 
	attr_accessor :sideA , :sideB, :sideC

	def initialize(sideA, sideB, sideC)
	 @sideA = sideA
	 @sideB = sideB
	 @sideC = sideC
	end

	def perimeter(sideA,sideB,sideC)
		p = sideA * sideB * sideC
	end 
end 
class Rectangle 
	attr_accessor :length , :width 

end 

class Cirlce
	attr_accessor :radius

end 


end 

#binding.pry 
