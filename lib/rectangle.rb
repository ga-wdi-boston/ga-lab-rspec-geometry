

module Geometry

	class Rectangle
		attr_accessor :length, :width

		def initialize
			@length = length
			@width = width
		end

		def perimeter_rec
			length * width
		end

	end
end
