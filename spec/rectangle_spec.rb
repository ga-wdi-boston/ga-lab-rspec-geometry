# The Rectangle will have instance variables of @length and @width. It needs methods to calcualte the perimeter and area of the rectangle.

require 'spec_helper'
require_relative '../lib/rectangle.rb'

describe Geometry::Rectangle do

	it 'calculates the perimeter' do
		rectangle = Geometry::Rectangle.new(2,4)
		expect(rectangle.perimeter).to eq 12
	end

	it 'calculates the area' do
		rectangle = Geometry::Rectangle.new(9,2)
		expect(rectangle.area).to eq 18
	end

end

