# The Triangle will have instance variables of @sideA, @sideB and @sideC. Triangle needs methods to calculate the perimeter, area, angles (outputs an array of angles), and valid?.

module Geometry

	class Triangle
		attr_accessor :sideA, :sideB, :sideC

		def initialize
			@sideA = sideA
			@sideB = sideB
			@sideC = sideC
		end

		def perim
		end

		def area
		end

		def angles
		end

		def angles
			array_of_angles = {}
		end
	end
end


Geometry::Triangle.new