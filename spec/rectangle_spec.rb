require 'spec_helper'
require_relative "../lib/rectangle"

describe Geometry::Rectangle do
	describe '#perimeter_rec' do
		it 'add sides together' do

			test_rec = Geometry::Rectangle.new

			test_rec.length = 2
			test_rec.width = 2

			expect(test_rec.perimeter_rec).to eq 8
		end
	end
	describe '#area_rec' do
		it 'calc area' do

			test_rec_2 = Geometry::Rectangle.new

			test_rec_2.length = 4
			test_rec_2.width = 4

			expect(test_rec_2.area_rec).to eq 16
		end
	end
end
