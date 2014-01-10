require 'pry'
module Geometry
	class Triangle
		attr_accessor :sideA, :sideB, :sideC

		def initialize(sideA, sideB, sideC)
			sides = [sideA, sideB, sideC].sort
			@sideA = sides[0].to_f
			@sideB = sides[1].to_f
			@sideC = sides[2].to_f
		end

		def perimeter
			@sideA + @sideB + @sideC
		end

		def area
			(@sideA * @sideB) / 2
		end

		def angles
			@angle_array = []
			# Use law of cosines to find the first angle
			angleA = ((@sideB ** 2) + (@sideC ** 2) - (@sideA ** 2)) / (2 * (@sideB * @sideC))

			angleA = (Math.acos(angleA)) * 180/ Math::PI
			@angle_array << angleA



			# Use the law of cosines to find another angle
			angleB = ((@sideA ** 2) + (@sideC ** 2) - (@sideB ** 2)) / (2 * (@sideA * @sideC))
			angleB = (Math.acos(angleB)) * 180/ Math::PI
			@angle_array << angleB

			# Subtract the first two angles from 180 to get the final angle
			angleC = 180 - angleA - angleB
			@angle_array << angleC
			@angle_array
		end

		def valid?
			(@sideA + @sideB > @sideC) && (@sideB + @sideC > @sideA) && (@sideA + @sideC > @sideB)
		end
	end
end

