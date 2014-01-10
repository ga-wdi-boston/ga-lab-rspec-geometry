module Geometry
	class Rectangle
		attr_accessor :length, :width
		def initialize(length, width)
			@length = length
			@width = width
		end

		def calculate_perimeter
			peri = (@length + @width) * 2
		end

		def calculate_area
			are = @length * @width
		end
	end
end
