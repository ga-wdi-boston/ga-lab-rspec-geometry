require 'spec_helper'
require_relative '../lib/circle'

describe Geometry::Circle do
	describe '#circumference' do
		it 'measures around a circle' do
			circle1 = Geometry::Circle.new(7)
			expect(circle1.circumference).to eq 43.982297150257104
		end

		it 'measures around a circle' do
			circle2 = Geometry::Circle.new(0.5)
			expect(circle2.circumference).to eq 3.141592653589793
		end
	end

	describe '#area' do
		it 'measures area of a circle' do
			circle3 = Geometry::Circle.new(4)
			expect(circle3.area).to eq 50.26548245743669
		end

		it 'measures area of a circle' do
			circle4 = Geometry::Circle.new(0.65)
			expect(circle4.area).to eq 1.3273228961416876
		end
	end
end
