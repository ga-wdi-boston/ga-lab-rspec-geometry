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
end
