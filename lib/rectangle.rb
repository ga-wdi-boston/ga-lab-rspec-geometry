module Geometry # container for classes
	class Rectangle

		attr_accessor :length, :width

		def initialize(length, width)
			@length = length.to_f
			@width = width.to_f
		end

		# calculate the perimeter
		def perimeter
			@length + @length + @width + @width
		end

		# calculate the area
		def area
			@length * @width
		end

	end
end

