require 'spec_helper'
require_relative '../lib/circle'

describe Geometry::Circle do

describe '#circumference' do
	it 'calculates 2*pi*r' do
		circle = Geometry::Circle.new(5)
		expect(circle.circumference).to eq (2 * Math::PI * 5)
	end
end

describe '#area' do
	it 'calculates pi*r^2' do
		circle = Geometry::Circle.new(5)
		expect(circle.area).to eq (Math::PI * 5**2)
	end
end


	# describe '#perimeter' do
	# 	it 'adds the lengths of the sides' do
	# 		rectangle = Geometry::Rectangle.new(4,5)
	# 		expect(rectangle.perimeter).to eq 4+4+5+5
	# 	end
	# end

	# describe '#area' do
	# 	it 'multiplies length by width' do
	# 		rectangle = Geometry::Rectangle.new(4,5)
	# 		expect(rectangle.area).to eq 4*5
	# 	end
	# end

end
