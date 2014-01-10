require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do
	describe '#perimeter' do
		it 'adds the lengths of the sides' do
			rect1 = Geometry::Rectangle.new(7, 8, 8, 7)
			expect(rect1.perimeter).to eq 30
		end
		it 'adds the lengths of the sides' do
			rect2 = Geometry::Rectangle.new(12, 12, 12, 12)
			expect(rect2.perimeter).to eq 48
		end
	end

	describe '#area' do
		it 'finds the area of the rectangle' do
			rect3 = Geometry::Rectangle.new(5, 6, 6, 5)
			expect(rect3.area).to eq 30
		end

		it 'finds the area of the rectangle' do
			rect4 = Geometry::Rectangle.new(7, 7, 7, 7)
			expect(rect4.area).to eq 49
		end
	end
end
