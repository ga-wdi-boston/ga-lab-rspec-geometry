require 'spec_helper'
	require_relative "../lib/rectangle.rb"

	describe Geometry::Rectangle do
				describe '#perimeter' do
					it 'adds the length of the sides' do
						rectangle = Geometry::Rectangle.new(30, 10)
	   				  expect(rectangle.perimeter).to eq 40
    end
	end
end

  describe Geometry::Rectangle do
				describe '#area' do
					it 'multiplies length, multiplies width then adds length and width' do
						rectangle = Geometry::Rectangle.new(10, 20)
	   				  expect(rectangle.area).to eq 60
			end
		end
	end

