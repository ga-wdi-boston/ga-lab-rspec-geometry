
# circumfrence  of cir  = 2* radius * pi
# Math::PI = pi


module Geometry
	class Circle
		attr_accessor :radius

		def initialize(radius)
			@radius = radius
		end

		def circumfrence
			2 * Math::PI * radius
		end

		def area_cir
			Math::PI * (radius**2)
		end
	end
end
