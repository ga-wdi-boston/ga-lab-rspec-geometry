require 'spec_helper'
require_relative '../lib/triangle.rb'

describe Geometry::Triangle do

	describe '#perimeter' do
		it 'returns the sum of the side length' do
			sides_hash = {
				'sideA' => 2,
				'sideB' => 2,
				'sideC' => 4
			}
			triangle = Geometry::Triangle.new(sides_hash)
			expect(triangle.perimeter(sides_hash)).to eq 8
		end

	end
end
