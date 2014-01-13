
module Geometry
	class Circle

		def initialize(radius)
			@radius = radius
		end

		def area
			circle_area = (Math::PI) * (@radius * 2)
		end

    def circumference
		  diameter = @radius *  2
		  circle_circumference = (Math::PI) * diameter
    end
  end
end
