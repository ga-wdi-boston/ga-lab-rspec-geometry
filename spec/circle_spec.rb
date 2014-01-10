require 'spec_helper'
require_relative '../lib/circle.rb'

describe Geometry::Circle do



	describe '#area' do

		it 'returns the area of the circle' do

			circle = Geometry::Circle.new(3)
			expect(circle.area).to eq Math::PI * 3 ** 2
		end
	end

	describe '#circumfrence' do

		it 'returns the circumfrence of the circle' do

			circle = Geometry::Circle.new(3)
			expect(circle.circumfrence).to eq Math::PI * 3 * 2
		end
	end

end
