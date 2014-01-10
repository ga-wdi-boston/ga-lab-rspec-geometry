module Geometry
	class Circle
		def initialize(radius)
			@radius = radius.to_f
		end

		def circumference
			(2 * @radius) * Math::PI
		end
	end
end
