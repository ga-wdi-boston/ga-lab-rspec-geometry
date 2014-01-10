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

		def area
			rectangle_area = @sideA * @sideB
		end
	end
end
