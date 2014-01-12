module Geometry
	class Triangle
		require 'pry'
		def initialize(sideA, sideB, sideC, base, height)
			@sideA = sideA.to_f
			@sideB = sideB.to_f
			@sideC = sideC.to_f
			@base = base
			@height = height
		end

		def perimeter
			triangle_perimeter = @sideA + @sideB + @sideC
		end

		def area
			triangle_area = 0.5 * @base * @height
		end

		def angle_a
			cos_a = ((@sideB**2) + (@sideC**2) - (@sideA**2)).to_f / (2*@sideB*@sideC).to_f
			angle_a = (Math::acos(cos_a))*(180/Math::PI).abs
		end

		def angle_b
			cos_b = ((@sideC**2) + (@sideA**2) - (@sideB**2)).to_f / (2*@sideA*@sideC).to_f
			angle_b = (Math::acos(cos_b))*(180/Math::PI).abs
		end

		def angle_c
			angle_c = 180 - angle_a - angle_b
		end

		def angle_array
			angle_array = []
			angle_array << angle_a << angle_b << angle_c
		end

		def valid_triangle
			if
				(@sideA + @sideB > @sideC) && (@sideB + @sideC > @sideA) && (@sideA + @sideC > @sideB)
				return true
			else
				return false
			end
		end
	end
end
