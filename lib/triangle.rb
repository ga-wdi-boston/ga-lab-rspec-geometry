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

	end
end
