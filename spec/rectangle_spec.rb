require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do

	describe '#perimeter' do
		it 'adds the lengths of the sides' do
			rectangle = Geometry::Rectangle.new(4,5)
			expect(rectangle.perimeter).to eq(4+4+5+5)
		end

	end

end
