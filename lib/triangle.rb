module Geometry # container for classes
	class Triangle

		attr_accessor :adjacent, :opposite, :hypotenuse

		def initialize(adjacent, opposite, hypotenuse)
			@adjacent = adjacent
			@opposite = opposite
			@hypotenuse = hypotenuse
		end

		# calculate the perimeter
		def perimeter
			@adjacent + @opposite + @hypotenuse
		end

		# calculate the area
		def area
			s = self.perimeter / 2
			Math.sqrt(s*(s-@adjacent)*(s-@opposite)*(s-@hypotenuse))
		end

		# calculates if the triangle is valid
		def valid?
			if
					@adjacent + @opposite > @hypotenuse &&
					@adjacent + @hypotenuse > @opposite &&
					@opposite + @hypotenuse > @adjacent
				return true
				else
				return false
			end
		end

		# calculates the angles of a triangle
		# output is an array
		def angles
			a = @adjacent
			b = @opposite
			c = @hypotenuse

			angle_a = ( ((a**2)-(b**2)-(c**2) / (-2*b*c) ) * ( 180 / Math::PI ) )
			angle_b = ( ((b**2)-(a**2)-(c**2) / (-2*a*c) ) * ( 180 / Math::PI ) )
			angle_c = ( ((c**2)-(b**2)-(a**2) / (-2*b*a) ) * ( 180 / Math::PI ) )

			[angle_a.to_f, angle_b.to_f, angle_c.to_f]
		end

	end
end
