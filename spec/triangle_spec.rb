require 'spec_helper'
require_relative "../lib/triangle"

describe Geometry::Triangle do
	describe '#perimeter' do
		it 'add the length of the sides' do
			test_tri = Geometry::Triangle.new

			test_tri.side_a = 2
			test_tri.side_b = 2
			test_tri.side_c = 3

			expect(test_tri.perimeter).to eq 7
		end
	end

	describe '#area_tri' do
		it 'calc area' do
			test_tri_2 = Geometry::Triangle.new

			test_tri_2.side_a = 2.0
			test_tri_2.side_b = 2.0
			test_tri_2.side_c = 2.0

			expect(test_tri_2.area_tri).to eq 1.7320508075688772
		end
	end

	describe '#angle_finder' do
		it 'finds angles' do
			test_tri_3 = Geometry::Triangle.new

			test_tri_3.side_a = 3.0
			test_tri_3.side_b = 3.0
			test_tri_3.side_c = 3.0

			expected_array = [59.99999999999999, 59.99999999999999, 60.000000000000014]

			expect(test_tri_3.angle_finder).to eq expected_array
		end
	end
end
