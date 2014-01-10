require 'spec_helper'
require_relative '../lib/rectangle.rb'

describe Geometry::Rectangle do



	describe '#perimeter' do

		it 'returns the sum of the side length' do

			rectangle = Geometry::Rectangle.new(4, 5)
			expect(rectangle.perimeter).to eq 18
		end
	end


	describe '#area' do

		it 'returns the area of the rectangle' do

			rectangle = Geometry::Rectangle.new(4, 5)
			expect(rectangle.area).to eq 20

		end
	end
end
