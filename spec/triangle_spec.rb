require 'spec_helper'
require_relative '../lib/triangle'

describe Geometry::Triangle do
  describe '#perimeter' do
    it 'adds the lengths of the sides' do
      triangle = Geometry::Triangle.new(3, 4, 5)
      expect(triangle.perimeter).to eq 12
    end
  end

  describe '#area' do
    it 'calculates the area of a triangle' do
      triangle = Geometry::Triangle.new(5, 5, 5)
      expect(triangle.area).to eq 10.825317547305483
    end

    it 'multiplies the two shortest sides of a right triangle and divides by two' do
      triangle = Geometry::Triangle.new(3, 4, 5)
      expect(triangle.area).to eq 6
    end
  end

  describe '#valid?' do
    it 'determines whether a triangles dimensions are valid' do
      triangle = Geometry::Triangle.new(1, 1, 10)
      expect(triangle.valid?).to eq false
    end
  end
end
