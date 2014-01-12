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

	describe '#angle_a' do
		it 'calculates the angle opposite side a' do
			triangle5 = Geometry::Triangle.new(3, 3, 3, 3, 3)
			expect(triangle5.angle_a).to eq 59.99999999999999
		end
	end

	describe '#angle_b' do
		it 'calculates the angle opposite side b' do
			triangle5 = Geometry::Triangle.new(3, 3, 3, 3, 3)
			expect(triangle5.angle_b).to eq 59.99999999999999
		end
	end

	describe '#angle_c' do
		it 'calculates the angle opposite side c' do
			triangle5 = Geometry::Triangle.new(3, 3, 3, 3, 3)
			expect(triangle5.angle_c).to eq 60.00000000000001
		end
	end

	describe '#angle_array' do
		it 'calculates the angle opposite side c' do
			triangle5 = Geometry::Triangle.new(3, 3, 3, 3, 3)
			expect(triangle5.angle_array).to eq [59.99999999999999, 59.99999999999999, 60.00000000000001]
		end
	end

	describe '#valid_triangle' do
		it 'calculates if a triangle is valid' do
			triangle6 = Geometry::Triangle.new(7, 10, 5, 8, 10)
			expect(triangle6.valid_triangle).to eq true
		end

		it 'calculates if a triangle is valid' do
			triangle7 = Geometry::Triangle.new(1, 1, 6, 3, 3)
			expect(triangle7.valid_triangle).to eq false
		end
	end
end
