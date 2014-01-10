require 'pry'

module Geometry
	class Triangle

		attr_accessor :sideA, :sideB, :sideC

		def initialize(sideA, sideB, sideC)
			@sideA = sideA.to_f
			@sideB = sideB.to_f
			@sideC = sideC.to_f
		end

		def perimeter
			sum = @sideA + @sideB + @sideC
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

			angle_a = angle_opposite_sides(@sideA, @sideB, @sideC)
			angle_b = angle_opposite_sides(@sideB, @sideC, @sideA)
			angle_c = angle_opposite_sides(@sideC, @sideA, @sideB)

			[angle_a, angle_b, angle_c]
		end

		def valid?
			return true if @sideA + @sideB > @sideC && @sideA + @sideC > @sideB && @sideB + @sideC > @sideA
		end

		private

		def angle_opposite_sides(angle_side, left_side, right_side)
			top = (left_side * left_side) + (right_side * right_side) - (angle_side * angle_side)
			bottom = (2 * left_side * right_side)
			full = Math::acos(top / bottom)
			full * (180 / Math::PI)

		end

	end
end

#Used to create a new Triangle class in the Geometry module
#Need to include the "Geometry" part
#Geometry::Triangle.new
