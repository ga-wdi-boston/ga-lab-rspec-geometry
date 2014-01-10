require 'spec_helper'
require_relative '../lib/rectangle'


describe Geometry::Rectangle do
  describe '#perimeter' do
    it 'returns perimeter of the rectangle' do
      rect = Geometry::Rectangle.new(2,4)
      expect(rect.perimeter).to eq 12
    end

    it 'returns perimeter of the rectangle' do
      rect = Geometry::Rectangle.new(3,5)
      expect(rect.perimeter).to eq 16
    end

  end

  describe '#area' do
    it 'returns the area of a rectangle' do
      rect = Geometry::Rectangle.new(2,4)
      expect(rect.area).to eq 8
    end

    it 'returns the area of a rectangle' do
      rect = Geometry::Rectangle.new(3,5)
      expect(rect.area).to eq 15
    end
  end


end
