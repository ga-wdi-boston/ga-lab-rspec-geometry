module Geometry
	class Triangle
		attr_accessor :sideA, :sideB, :sideC

		def initialize(sideA, sideB, sideC)
			sides = [sideA, sideB, sideC].sort
			@sideA = sides[0]
			@sideB = sides[1]
			@sideC = sides[2]
		end

		def perimeter
			@sideA + @sideB + @sideC
		end

		def area
			(@sideA * @sideB) / 2
		end

		def angles
			angles = []
			# Use law of cosines to find the first angle

			# Use the law of cosines to find another angle

			# Subtract the first two angles from 180 to get the final angle
		end
	end
end

