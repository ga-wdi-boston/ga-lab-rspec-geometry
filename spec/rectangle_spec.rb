require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do
	describe '#perimeter' do
		it 'should calculate the perimeter of the rectangle' do
			rectangle = Geometry::Rectangle.new(3,4)
			expect(rectangle.perimeter).to eq 14
		end
	end

	describe '#area' do
		it 'should calculate the area of the rectangle' do
			rectangle = Geometry::Rectangle.new(3,4)
			expect(rectangle.area).to eq 12
		end
	end
end
