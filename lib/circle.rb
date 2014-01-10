module Geometry
	class Circle

		def initialize(radius)
			@radius = radius
		end

		def area
			Math::PI * @radius ** 2
		end

		def circumfrence
			Math::PI * @radius * 2
		end

	end
end
