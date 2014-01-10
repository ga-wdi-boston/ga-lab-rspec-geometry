require 'pry'
module Geometry
	class Triangle
		attr_accessor :sideA, :sideB, :sideC
		def initialize(sideA, sideB, sideC)
			@sideA = sideA
			@sideB = sideB
			@sideC = sideC
		end

		def calculate_perimeter
			perimeter = @sideA + @sideB + @sideC
		end

		def calculate_area
			p = (@sideA + @sideB +@sideC)/2
			area = Math.sqrt(p * (p - @sideA) * (p -sideB) * (p-sideC))
		end

		def calculate_angle
			angle = Array.new(0)
			a = @sideA.to_f
			b = @sideB.to_f
			c = @sideC.to_f
			angleA = (b ** 2 + c ** 2 - a ** 2)/(2 * b * c)
			angleB = (a ** 2 + c ** 2 - b ** 2)/(2 * a * c)
			angleC = (a ** 2 + b ** 2 - c ** 2)/(2 * a * b)
			angle << Math.acos(angleA) * 180 / Math::PI
			angle << Math.acos(angleB) * 180 / Math::PI
			angle << Math.acos(angleC) * 180 / Math::PI
			return angle
		end

		def valid?
			a = @sideA.to_f
			b = @sideB.to_f
			c = @sideC.to_f
			if a + b < c||b + c < a||a + c <b
				return valid = false
			else
				return valid = true
			end
		end

	end
end
