require 'pry'

module Geometry

	class Triangle
		attr_accessor :a, :b, :c

		def initialize(a, b, c)
			@a = a
			@b = b
			@c = c
		end

		def perimeter
			@a + @b + @c
		end	

		def area
			half_p = (self.perimeter.to_f/2)
			num_to_sqrt = half_p * (half_p - @a) * (half_p - @b) * (half_p - @c)
			Math.sqrt(num_to_sqrt)
		end

		def valid?
			if (@a + @b > @c) && (@a + @c > @b) && (@b + @c > @a)
				true
			else
				false
			end
		end

	end

	class Circle
		attr_accessor :r 

		def initialize(r)
			@r = r
			@d = 2 * r
		end

		def area
			Math::PI * (@r ** 2)
		end

		def perimeter
			Math::PI * @d
		end

	end

	class Rectangle
		attr_accessor :l, :w

		def initialize(l, w)
			@l = l
			@w = w
		end

		def perimeter
			2 * (@l + @w)
		end

		def area
			@l * @w
		end

	end

end

