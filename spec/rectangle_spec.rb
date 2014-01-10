require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do
  describe '#perimeter_rectangle' do
    it 'calculates the perimeter of a rectangle' do
      rectangle = Geometry::Rectangle.new(4, 5)
      expect(rectangle.perimeter_rectangle).to eq 18
    end

    it 'sums all the sides of a rectangle' do
      rectangle = Geometry::Rectangle.new(10, 2)
      expect(rectangle.perimeter_rectangle).to eq 24
    end
  end

  describe '#area_rectangle' do
    it 'calculates the area of a rectangle' do
      rectangle = Geometry::Rectangle.new(5, 4)
      expect(rectangle.area_rectangle).to eq 20
    end

    it 'multiplies the length and width of a rectangle' do
      rectangle = Geometry::Rectangle.new(3, 7)
      expect(rectangle.area_rectangle).to eq 21
    end
  end
end
