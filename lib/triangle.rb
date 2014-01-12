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

#cos A = (b^2 + c^2 - a^2)/2bc and  A = cos-1
#cos B = (c^2 + a^2 - b^2)/2ca  and B = cos-1
# C = 180° - A° - B°
# Math.acos ( this is inverse cos)

		def angle_finder
			angle_array = []
			cos_a = ((side_b**2)+(side_c**2)-(side_a**2))/(2*side_b*side_c)
			cos_b = ((side_c**2)+(side_a**2)-(side_b**2))/(2*side_c*side_a)
			angle_a = (Math.acos(cos_a))*(180/Math::PI)
			angle_b = (Math.acos(cos_b))*(180/Math::PI)
			angle_c = ((angle_a + angle_b) - 180).abs
			angle_array << angle_a
			angle_array << angle_b
			angle_array << angle_c
			return angle_array
		end

		# a+b > c and a +c > b  and  b+c  > a
		def valid?
			if  side_a + side_b > side_c && side_a + side_c > side_b && side_b + side_c > side_a
				return true
			else
				return false
			end
		end
	end
end
