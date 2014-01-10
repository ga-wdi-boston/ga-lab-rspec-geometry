module Geometry
	class Triangle

		attr_accessor :sides

		def initialize(sides)
			@sides = {}

		end

		def perimeter(hash)
			sum = 0
			hash.each do |key, value|
				sum += value
			end
			return sum
		end

	end
end

#Used to create a new Triangle class in the Geometry module
#Need to include the "Geometry" part
#Geometry::Triangle.new
