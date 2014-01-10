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
end
