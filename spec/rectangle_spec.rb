require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do
  describe '#perimeter' do
    it 'returns the perimeter of the rectangle' do
      first_rectangle = Geometry::Rectangle.new(2, 5)
      second_rectangle = Geometry::Rectangle.new(3, 7)

      expect(first_rectangle.perimeter).to eq 14
      expect(second_rectangle.perimeter).to eq 20
    end
  end

  describe '#area' do
    it 'returns the area of the rectangle' do
      first_rectangle = Geometry::Rectangle.new(2, 5)
      second_rectangle = Geometry::Rectangle.new(3, 7)

      expect(first_rectangle.area).to eq 10
      expect(second_rectangle.area).to eq 21
    end
  end
end
