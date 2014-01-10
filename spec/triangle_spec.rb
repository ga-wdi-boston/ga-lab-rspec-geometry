require 'spec_helper'
require_relative '../lib/triangle'

describe Geometry::Triangle do
	describe '#perimeter' do
		it 'adds the lengths of the sides' do
			triangle1 = Geometry::Triangle.new(3, 4, 5)
			expect(triangle1.perimeter).to eq 12
		end
	end
end
