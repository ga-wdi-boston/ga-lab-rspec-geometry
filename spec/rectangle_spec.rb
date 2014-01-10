require 'spec_helper'
require_relative '../lib/rectangle.rb'

describe Geometry::Rectangle do



	describe '#perimeter' do

		it 'returns the sum of the side length' do

			rectangle = Geometry::Rectangle.new(4, 5)
			expect(rectangle.perimeter).to eq 18
		end

		# it 'returns 0 if no sides are given' do
		# 	sides_hash = {}
		# 	triangle = Geometry::Triangle.new(sides_hash)
		# 	expect(triangle.perimeter(sides_hash)).to eq(0)
		# end

	end
end
