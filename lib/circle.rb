module Geometry
	
	class Circle
		attr_accessor :radius
		def initialize(radius)
			@radius = radius
		end

		def calculate_circumstance
			circumstance =@radius * 2 *Math::PI
		end
		def calculate_area
			area = @radius ** 2 * Math::PI
		end
	end
	
end
