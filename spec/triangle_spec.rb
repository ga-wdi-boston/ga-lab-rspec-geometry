require 'spec_helper'
require_relative '../lib/triangle.rb'

describe Geometry::Triangle do



	describe '#perimeter' do

		it 'returns the sum of the side length' do

			triangle = Geometry::Triangle.new(3, 4, 5)
			expect(triangle.perimeter).to eq 12
		end

		# it 'returns 0 if no sides are given' do
		# 	sides_hash = {}
		# 	triangle = Geometry::Triangle.new(sides_hash)
		# 	expect(triangle.perimeter(sides_hash)).to eq(0)
		# end

	end



	describe '#area' do

		it 'returns the area of the triangle' do

			triangle = Geometry::Triangle.new(3, 3, 3)
			expect(triangle.area).to eq 3.897114317029974
		end
	end


	describe '#angles' do

		it 'returns the angles of the triangle' do

				triangle = Geometry::Triangle.new(3, 3, 3)
				expect(triangle.angles).to eq [59.99999999999999, 59.99999999999999, 59.99999999999999]
		end
	end




end
