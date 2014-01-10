require 'spec_helper'
require_relative '../lib/triangle'


describe Geometry::Triangle do
  describe '#perimeter' do
    it 'adds the lenghts of the sides' do
      triangle = Geometry::Triangle.new(3,4,5)
      expect(triangle.perimeter).to eq 12
    end
  end

  describe '#area' do
    it 'returns the area of a triangle' do
      triangle = Geometry::Triangle.new(3,4,5)
      expect(triangle.area).to eq 6
    end

    it 'returns the area of a triangle' do
      triangle = Geometry::Triangle.new(6,8,10)
      expect(triangle.area).to eq 24
    end
  end

  describe '#angles' do
    it 'returns an array of three angles based on type' do
      triangle = Geometry::Triangle.new(3,4,5)
      expect(triangle.angles('right')).to eq [30, 60, 90]
    end

    it 'returns an array of three angles based on type' do
      triangle = Geometry::Triangle.new(3,4,5)
      expect(triangle.angles('isosceles')).to eq [45, 45, 90]
    end

    it 'returns an array of three angles based on type' do
      triangle = Geometry::Triangle.new(3,4,5)
      expect(triangle.angles('equilateral')).to eq [60, 60, 60]
    end
  end
end
