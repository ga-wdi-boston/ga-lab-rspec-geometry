require 'pry'

module Geometry # container for classes
	class Triangle

		attr_accessor :adjacent, :opposite, :hypotenuse

		def initialize(adjacent, opposite, hypotenuse)

			@adjacent = adjacent.to_f
			@opposite = opposite.to_f
			@hypotenuse = hypotenuse.to_f

			if
				@adjacent + @opposite > @hypotenuse &&
				@adjacent + @hypotenuse > @opposite &&
				@opposite + @hypotenuse > @adjacent
				puts "congratulations, that's a fabulous triangle"
			else
				puts "that ain't no triangle I ever heard of!"
			end

		end

		# calculates if the triangle is valid
		def valid?
			if
				@adjacent + @opposite > @hypotenuse &&
				@adjacent + @hypotenuse > @opposite &&
				@opposite + @hypotenuse > @adjacent
				return true
				else false
			end
		end

		# calculate the perimeter
		def perimeter
			if self.valid?
				then
					@adjacent + @opposite + @hypotenuse
				else
					puts "that ain't no triangle I ever heard of!"
			end
		end

		# calculate the area
		def area
			if self.valid?
				then
					s = self.perimeter / 2
					Math.sqrt(s*(s-@adjacent)*(s-@opposite)*(s-@hypotenuse))
				else
					puts "that ain't no triangle I ever heard of!"
			end
		end



		# calculates the angles of a triangle
		# output is an array
		def angles

			if self.valid?
				then

					a = @adjacent
					b = @opposite
					c = @hypotenuse

					angle_a =  (Math.acos((((a**2)-(b**2)-(c**2)).to_f)/(-2*b*c)))*(180/Math::PI)
					angle_b =  (Math.acos((((b**2)-(a**2)-(c**2)).to_f)/(-2*a*c)))*(180/Math::PI)
					angle_c =  (Math.acos((((c**2)-(b**2)-(a**2)).to_f)/(-2*b*a)))*(180/Math::PI)

					[angle_a, angle_b, angle_c]
				else
					puts "that ain't no triangle I ever heard of!"
			end

		end

	end
end

triangle = Geometry::Triangle.new(3,54,5)
puts triangle.angles
puts triangle.valid?
