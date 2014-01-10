require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do
  describe '#perimeter' do
    it 'adds the lengths of sides' do
      rectangle = Geometry::Rectangle.new(12,15)
      expect(rectangle.perimeter).to eq 54
    end
  end

  describe '#area' do
    it 'multiplies the length by the width' do
      rectangle = Geometry::Rectangle.new(12,15)
      expect(rectangle.area).to eq 180
    end

  end
end