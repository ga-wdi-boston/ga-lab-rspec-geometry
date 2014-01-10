module Geometry
	class Rectangle

		def initialize(sideA, sideB, sideC, sideD)
			@sideA = sideA
			@sideB = sideB
			@sideC = sideC
			@sideD = sideD
		end

		def perimeter
			rectangle_perimeter = @sideA + @sideB + @sideC + @sideD
		end
	end
end
