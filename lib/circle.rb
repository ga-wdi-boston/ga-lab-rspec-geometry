module Geometry
	class Circle

		def initialize(radius)
			@radius = radius
		end

		def circumference
			circumference = 2.0 * Math::PI * @radius
		end

		def area
			area = Math::PI * @radius * @radius
		end
	end
end
