module Geometry # container for classes
	class Circle

		attr_accessor :radius

		def initialize(radius)
			@radius = radius.to_f
		end

		# calculate the circumference
		def circumference
			2 * Math::PI * @radius
		end

		# calculate the area
		def area
			Math::PI * @radius ** 2
		end

	end
end
