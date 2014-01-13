require 'spec_helper'
require_relative "../lib/circle.rb"

describe Geometry::Circle do
				describe '#area' do
					it 'squares the radius and multiplies by PI' do
						circle = Geometry::Circle.new(2)
	   				  expect(circle.area).to eq 12.566370614359172
    end
	end
end

describe Geometry::Circle do
				describe '#circumference' do
					it 'multiplies PI by the radius squared' do
						circle = Geometry::Circle.new(5)
	   				  expect(circle.circumference).to eq 31.41592653589793
    end
	end
end