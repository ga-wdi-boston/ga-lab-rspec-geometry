module Geometry
	class Rectangle
		def initialize(length, width)
			@length = length
			@width = width
		end

		def perimeter
			@length * 2 + @width * 2
		end

		def area
			@length * @width
		end
	end
end
