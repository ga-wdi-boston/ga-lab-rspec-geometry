# The Rectangle will have instance variables of @length and @width. It needs methods to calcualte the perimeter and area of the rectangle.

module Geometry

	class Rectangle
		attr_accessor :length, :width

		def initialize
			@length = length
			@width = width
		end

		def perimenter
		end

		def area
		end


	end
end


Geometry::Rectangle.new