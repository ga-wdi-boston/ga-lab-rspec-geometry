module Geometry
	class Triangle

		def initialize(sideA, sideB, sideC)
			@sideA = sideA
			@sideB = sideB
			@sideC = sideC
		end

  	def perimeter
  		@sideA + @sideB + @sideC
    end

    def area
    	(0.5*(@sideA)) * @sideB
    end

    def angle

    end

    def is_triangle
    end

  end
end

