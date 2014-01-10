require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do
	describe '#peri' do
		it  'add the lengths and width' do
			rectangle = Geometry::Rectangle.new(4, 5)
			expect(rectangle.calculate_perimeter).to eq 18
		end
	end

	describe '#are' do
		it 'add the lengths and width' do 
			rectangle = Geometry::Rectangle.new(4, 5)
			expect(rectangle.calculate_area).to eq 20
		end
	end

end