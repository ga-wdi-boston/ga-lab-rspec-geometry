require 'spec_helper'
require_relative "../lib/circle"

describe Geometry::Circle do
	before(:each) do
		@circle = Geometry::Circle.new(2.0)
	end
	describe '#circumfrence' do
		it 'calculates circumfrence' do
			expect(@circle.circumfrence).to eq 12.566370614359172
		end
	end
	describe '#area_cir' do
		it 'calculates area' do
			expect(@circle.area_cir).to eq 12.566370614359172
		end
	end
end
