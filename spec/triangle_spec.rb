require 'spec_helper'
require_relative '../lib/triangle'

describe Geometry::Triangle do
	describe '#perimeter' do
		it  'add the lengths of the sides' do
			triangle = Geometry::Triangle.new(3, 4, 5)
			expect(triangle.calculate_perimeter).to eq 12
		end
	end

	describe '#area' do
		it 'add the lengths of the sides' do 
			triangle = Geometry::Triangle.new(3, 4, 5)
			expect(triangle.calculate_area).to eq 6
		end
	end

	describe '#angle' do
		it 'add the lengths of the sides' do 
			triangle = Geometry::Triangle.new(3.0, 3.0, 3.0)
			expect(triangle.calculate_angle).to eq [60, 60, 60]
		end
	end

	describe '#valid' do
		it 'add the lengths of the sides' do 
			triangle = Geometry::Triangle.new(3, 3, 3)
			expect(triangle.valid?).to eq true
		end
	end

end