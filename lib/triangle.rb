module Geometry
	class Triangle

		def initialize(sideA, sideB, sideC)
			@sideA = sideA
			@sideB = sideB
			@sideC = sideC
		end

		def perimeter
			triangle_perimeter = @sideA + @sideB + @sideC
		end
	end
end
