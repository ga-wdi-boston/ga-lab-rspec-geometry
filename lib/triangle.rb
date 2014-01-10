module Geometry
	
	class Triangle
		attr_accessor :sideA, :sideB, :sideC
		def initialize(sideA, sideB, sideC)
			@sideA = sideA
			@sideB = sideB
			@sideC = sideC 
		end

		def calculate_perimeter
			perimeter = @sideA + @sideB + @sideC
		end

		def calculate_area
			p = (@sideA + @sideB +@sideC)/2
			area = Math.sqrt(p * (p - @sideA) * (p-sideB) * (p-sideC))
		end
	end
end
