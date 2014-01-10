require 'spec_helper'
require_relative '../lib/circle'

describe Geometry::Circle do
	describe '#circumstance' do
		it  'add the lengths and width' do
			circle = Geometry::Circle.new(4)
			expect(circle.calculate_circumstance).to eq 8 * Math::PI
		end
	end

	describe '#area' do
		it 'add the lengths and width' do 
			circle = Geometry::Circle.new(4)
			expect(circle.calculate_area).to eq 16 * Math::PI
		end
	end

end