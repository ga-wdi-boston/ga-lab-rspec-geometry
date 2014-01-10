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

	end
end
