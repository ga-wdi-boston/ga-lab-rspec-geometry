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
			sum = sideA + sideB + sideC
			# sum = 0
			# hash.each do |key, value|
			# 	sum += value
			# end
			# return sum
		end

		def area
			array = [sideA, sideB, sideC]
			mult = 1
			s = (perimeter.to_f/2)
			#binding.pry
			array.each do |side|
				mult *= (s - side)
			end
			s = s * mult
			#binding.pry
			Math::sqrt(s)
		end

		def angles


		end

	end
end

#Used to create a new Triangle class in the Geometry module
#Need to include the "Geometry" part
#Geometry::Triangle.new
