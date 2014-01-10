module Geometry
	class Triangle

		def initialize(sideA, sideB, sideC, base, height)
			@sideA = sideA
			@sideB = sideB
			@sideC = sideC
			@base = base
			@height = height
		end

		def perimeter
			triangle_perimeter = @sideA + @sideB + @sideC
		end

		def area
			triangle_area = 0.5 * @base * @height
		end
	end
end
