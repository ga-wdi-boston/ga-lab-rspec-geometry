require 'pry'

module Geometry

	class Triangle
		def perimeter(@sidea, @sideb, @sidec)
			p = a + b + c 
		end 

		def area(@sidea, @sideb, @sidec)

		end

		def angles(@sidea, @sideb, @sidec)

		end

		def valid?(@sidea, @sideb, @sidec)
			if ((@sidea + @sideb) > @sidec) && ((@sidea + @sidec) > @sideb) && ((@sideb + @sidec) > @sidea)
				return true
			else
				return false
		end	
	end

end
