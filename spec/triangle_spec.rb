require 'spec_helper'
require_relative '../lib/triangle.rb'

describe Geometry::Triangle do

	describe '#perimeter' do
		it 'returns the sum of the side length' do
			sides_hash = {
				'sideA' => 3,
				'sideB' => 4,
				'sideC' => 5
			}
			triangle = Geometry::Triangle.new(sides_hash)
			expect(triangle.perimeter(sides_hash)).to eq 12
		end
	end

	describe '#area' do
		it 'returns the area of the triangle' do
			sides_hash = {
				'sideA' => 3,
				'sideB' => 3,
				'sideC' => 3
			}
			triangle = Geometry::Triangle.new(sides_hash)
			expect(triangle.area(sides_hash)).to eq 3.897114317029974
		end
	end



end
