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
      expect(triangle.area).to eq Math.sqrt(18.75)
    end

    it 'multiplies the two shortest sides of a right triangle and divides by two' do
      triangle = Geometry::Triangle.new(3, 4, 5)
      expect(triangle.area).to eq 6
    end
  end
end
