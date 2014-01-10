require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do
  describe '#perimeter_rectangle' do
    it 'sums all the sides of a rectangle' do
      rectangle = Geometry::Rectangle.new(4, 5)
      expect(rectangle.perimeter_rectangle).to eq 18
    end

    it 'sums all the sides of a rectangle' do
      rectangle = Geometry::Rectangle.new(10, 2)
      expect(rectangle.perimeter_rectangle).to eq 24
    end
  end
end
