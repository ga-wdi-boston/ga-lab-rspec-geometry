
module Geometry
	class Triangle
		attr_accessor :side_a, :side_b, :side_c
		def initialize(a, b, c)
			@side_a = a
			@side_b = b
			@side_c = c
		end
		
		def perimeter
			@side_c + @side_b + @side_a
		end
		
		def area
			perimeter_half = (@side_c + @side_b + @side_a)/2
			number = perimeter_half * ((perimeter_half-@side_a)*(perimeter_half-@side_b)*(perimeter_half-@side_c))
			area = Math.sqrt(number)
			return area
		end

		def triangle_valid?
			if (@side_a+@side_b > @side_c)&& (@side_a+@side_c > @side_b) && (@side_b+@side_c > @side_a)
				return true
			else
				return false
			end
		end
	end

	class Rectangle
		attr_accessor :l, :w
		def initialize(length, width)
			@l = length
			@w = width
		end

		def perimeter
			(2 * @l) + (2 * @w)
		end

		def area
			@l * @w
		end

	end

	class Circle
		attr_accessor :r
		def initialize(radius)
			@r = radius
		end

		def circumference
			2 * @r * Math::PI
		end

		def area
			Math::PI * (@r ** 2)
		end
	end
end