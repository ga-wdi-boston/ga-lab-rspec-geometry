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
    it 'multiplies the base times the height and divides it by two' do
      triangle = Geometry::Triangle.new(5, 5, 5)
      expect(triangle.area).to eq 6.25
    end
  end
end
