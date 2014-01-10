require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do
	describe '#perimeter' do
		it 'adds the lengths of the sides' do
			rect1 = Geometry::Rectangle.new(7, 8, 8, 7)
			expect(rect1.perimeter).to eq 30
		end
		it 'adds the lengths of the sides' do
			rect2 = Geometry::Rectangle.new(12, 12, 12, 12)
			expect(rect2.perimeter).to eq 48
		end
	end
end
