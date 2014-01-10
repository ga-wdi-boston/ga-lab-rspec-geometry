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


end
