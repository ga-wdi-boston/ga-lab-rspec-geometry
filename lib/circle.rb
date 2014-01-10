module Geometry
	class Circle
		def initialize(radius)
			@radius = radius.to_f
		end

		def circumference
			(2 * @radius) * Math::PI
		end

		def area
			(@radius ** 2) * Math::PI
		end
	end
end

