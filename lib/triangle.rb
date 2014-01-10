# to access this class Geometry::Triangle.new
# semiperimeter = (length of side a + length of side b + length of side c) / 2
# Area = √{s (s - a)(s - b)(s - c)}.

module Geometry
	class Triangle
		attr_accessor :side_a, :side_b, :side_c,

		def initialize
			@side_a = side_a
			@side_b = side_b
			@side_c = side_c
		end

		def perimeter
			side_a + side_b + side_c
		end

		def area_tri
			semiperimeter = ((side_a + side_b + side_c)/2)
			return (semiperimeter*(semiperimeter - side_a)*(semiperimeter - side_b)*(semiperimeter - side_c))**0.5
		end
	end
end
