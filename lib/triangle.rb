module Geometry
	class Triangle

		def initialize(sideA, sideB, sideC, base, height)
			@sideA = sideA
			@sideB = sideB
			@sideC = sideC
			@base = base
			@height = height
			@sides = []
		end

		def perimeter
			triangle_perimeter = @sideA + @sideB + @sideC
		end

		def area
			triangle_area = 0.5 * @base * @height
		end

		def cosine_a
			cos_a = ((@sideB ** 2) + (@sideC ** 2) - (@sideA ** 2)) / (2 * @sideB * @sideC)
		end

		def angle_a
			angle_a = Math::acos * cos_a
		end
	end
end
