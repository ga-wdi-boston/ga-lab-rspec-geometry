# The Triangle will have instance variables of @sideA, @sideB and @sideC. Triangle needs methods to calculate the perimeter, area, angles (outputs an array of angles), and valid?.

require 'spec_helper'
require_relative '../lib/triangle.rb'

describe Geometry::Triangle do

	it 'calculates the perimeter' do
		triangle = Geometry::Triangle.new(3,4,5)
		expect(triangle.perimeter).to eq 12
	end

	it 'calculates the area' do
		triangle = Geometry::Triangle.new(3,4,5)
		expect(triangle.area).to eq 6
	end

	it 'returns an array of angles' do
	 	triangle = Geometry::Triangle.new(3,4,5)
	 	expect(triangle.angles.class).to eq Array
	 end

	 it 'returns the correct angles in the array' do
	 	triangle = Geometry::Triangle.new(3,3,3)
	 	expect(triangle.angles).to eq [59.99999999999999, 59.99999999999999, 59.99999999999999]
	 end

	it 'is a valid triangle' do
		triangle = Geometry::Triangle.new(3,4,5)
		expect(triangle.valid?).to eq true
	end

end




