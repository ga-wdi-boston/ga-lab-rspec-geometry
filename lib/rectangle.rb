module Geometry
	class Rectangle

		def initialize(length, width)
			@length = length
			@width = width
   	end

    def perimeter
  	  @length + @width
    end

    def area
    	rectangle_area = (2*@length) + (2*@width)
    end

  end
end


