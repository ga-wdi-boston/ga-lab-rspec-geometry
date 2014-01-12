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

		def angle_a
			cos_a = ((@sideB**2) + (@sideC**2) - (@sideA**2)) / (2*@sideB*@sideC)
			angle_a = ((Math.acos*cos_a)*(180/Math::PI).abs
		end

		def angle_b
			cos_b = ((@sideC**2) + (@sideA**2) - (@sideB**2)) / (2*@sideA*@sideC)
			angle_b = ((Math.acos*cos_b)*(180/Math::PI)).abs
		end

		def angle_c
			angle_c = 180 - angle_a - angle_b
		end

		def angle_array
			angle_array = []
			angle_array << angle_a
			angle_array << angle_b
			angle_array << angle_c
		end

		def valid_triangle
			if
				(@sideA + @sideB > sideC) && (@sideB + @sideC > @sideA) && (@sideA + @sideC > @sideB)
				return true
			else
				return false
			end
		end
	end
end
