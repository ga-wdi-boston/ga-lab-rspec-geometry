require 'spec_helper'
require_relative "../lib/rectangle"

describe Geometry::Rectangle do
	describe '#perimeter_rec' do
		it 'add sides together' do

			test_rec = Geometry::Rectangle.new

			test_rec.length = 2
			test_rec.width = 2

			expect(test_rec.perimeter_rec).to eq 4
		end
	end
end
