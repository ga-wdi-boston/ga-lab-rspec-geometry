module Geometry
	class Rectangle
		attr_accessor :length, :width
		def initialize(length, width)
			@length = length
			@width = width
		end

		def calculte_perimeter
			perimeter = (@length + @width) * 2
		end

		def calculate_area
			area = @length * @width
		end
	end
	
end
