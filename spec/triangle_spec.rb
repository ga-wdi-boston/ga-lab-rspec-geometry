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
      expect(triangle.area).to eq
    end
  end
end
