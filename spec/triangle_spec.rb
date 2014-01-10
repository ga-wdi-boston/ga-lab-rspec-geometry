require 'spec_helper'
require_relative '../lib/Triangle'

describe Geometry::Triangle do
  describe '#perimeter' do
    it 'adds the lengths of sides' do
      triangle = Geometry::Triangle.new(3,4,5)
      expect(triangle.perimeter).to eq 12
    end
  end
  describe '#area' do
    it 'multiplies the base and the height, then multiplies result by .5' do
      triangle = Geometry::Triangle.new(3,4,5)
      expect(triangle.area).to eq 6
    end
  end
end