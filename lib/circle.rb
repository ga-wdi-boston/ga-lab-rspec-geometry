module Geometry # container for classes
	class Circle

		attr_accessor :radius

		def initialize(radius)
			@radius = radius
		end

		# calculate the circumference
		def circumference
			2 * Math::PI * @radius
		end

		# # calculate the area
		# def area
		# 	@length * @width
		# end

	end
end
