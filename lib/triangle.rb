# to access this class Geometry::Triangle.new


module Geometry
	class Triangle
		attr_accessor :side_a, :side_b, :side_c

		def initialize
			@side_a = side_a
			@side_b = side_b
			@side_c = side_c
		end

		def perimeter
			side_a + side_b + side_c
		end

	end
end
