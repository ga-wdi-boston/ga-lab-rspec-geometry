
require 'pry'

module Geometry

	class Triangle
		attr_accessor :sideA, :sideB, :sideC

		def initialize(sideA, sideB, sideC)
			@sideA = sideA
			@sideB = sideB
			@sideC = sideC
		end

		def perimeter
			@sideA + @sideB + @sideC
		end

		def area
			(sideA * sideB) / 2
		end

		def find_angle(a, b,c)
			a = a.to_f
			b = b.to_f
			c = c.to_f

			Math.acos(((a**2) + (b**2) -(c**2)) / (2*a*b)) * 180 / Math::PI
		end

		def angles
			array_of_angles = []

			array_of_angles << find_angle(@sideB, @sideC, @sideA)  # Side A
			array_of_angles << find_angle(@sideC, @sideA, @sideB)  # Side B
			array_of_angles << find_angle(@sideA, @sideB, @sideC) # Side C

		end

		def valid?
			a = @sideA
			b = @sideB
			c = @sideC

			(a + b > c) && (a + c > b) && (b + c > a)

		end

	end
end
