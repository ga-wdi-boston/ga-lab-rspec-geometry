require 'spec_helper'
require_relative '../lib/triangle'

describe Geometry::Triangle do
	describe '#perimeter' do
		it  'add the lengths of the sides' do
			triangle = Geometry::Triangle.new(3, 4, 5)
			expect(triangle.calculate_perimeter).to eq 12
		end
	end

	describe '#area' do
		it 'add the lengths of the sides' do 
			triangle = Geometry::Triangle.new(3, 4, 5)
			expect(triangle.calculate_area).to eq 6
		end
	end

end