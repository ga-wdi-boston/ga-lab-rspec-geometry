require 'pry'

module Geometry
	class Triangle

		attr_accessor :sides

		def initialize(sides)
			@sides = {}

		end

		def perimeter(hash)
			sum = 0
			hash.each do |key, value|
				sum += value
			end
			return sum
		end

		def area(hash)
			mult = 1
			s = (perimeter(hash).to_f/2)

			hash.each do |key, value|
				mult *= (s - value)
			end

			s = s * mult
			binding.pry
			Math::sqrt(s)
		end

	end
end

#Used to create a new Triangle class in the Geometry module
#Need to include the "Geometry" part
#Geometry::Triangle.new
