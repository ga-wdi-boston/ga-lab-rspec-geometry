require 'spec_helper'
require_relative "../lib/circle"

describe Geometry::Circle do
	describe '#circumfrence' do
		it 'calculates circumfrence' do
			test_cir = Geometry::Circle.new
			test_cir.radius = 2.0
			expect(test_cir.circumfrence).to eq 12.566370614359172
		end
	end
	describe '#area_cir' do
		it 'calculates area' do
			test_cir_2 = Geometry::Circle.new
			test_cir_2.radius = 4.0
			expect(test_cir_2.area_cir).to eq 50.26548245743669
		end
	end
end
