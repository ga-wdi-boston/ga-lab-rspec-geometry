require 'spec_helper'
require_relative '../lib/triangle'

describe Geometry::Triangle do
	describe '#perimeter' do
		it 'adds the lengths of the sides' do
			triangle1 = Geometry::Triangle.new(3, 4, 5, 4, 5)
			expect(triangle1.perimeter).to eq 12
		end
		it 'adds the lengths of the sides' do
			triangle2 = Geometry::Triangle.new(10, 11, 12, 11, 12)
			expect(triangle2.perimeter).to eq 33
		end
	end

	describe '#area' do
		it 'calculates the area of a triangle' do
			triangle3 = Geometry::Triangle.new(3, 4, 5, 4, 5)
			expect(triangle3.area).to eq 10
		end
		it 'calculates the area of a triangle' do
			triangle4 = Geometry::Triangle.new(10, 11, 12, 11, 12)
			expect(triangle4.area).to eq 66
		end
	end

	describe '#cosine_a' do
		it 'calculates the cosine of side a' do
			triangle5 = Geometry::Triangle.new(8, 6, 7, 7.5, 7)
			expect(triangle5.cosine_a).to eq 0.25
		end

		# it 'calculates the inverse cosine of side a' do
		# 	triangle5 = Geometry::Triangle.new(8, 6, 7, 7.5, 7)
		# 	expect(triangle5.angle_a).to eq 75.5
		# end
	end
end
