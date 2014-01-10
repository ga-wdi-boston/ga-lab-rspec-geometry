require 'spec_helper'
require_relative '../lib/circle'

describe Geometry::Circle do
  describe '#circumference' do
    it 'calculates the circumference of a circle' do
      circle = Geometry::Circle.new(4)
      expect(circle.circumference).to eq 8 * Math::PI
    end
  end

  describe '#area_circle' do
    it 'calculates the area of a circle' do
      circle = Geometry::Circle.new(5)
      expect(circle.area_circle).to eq Math::PI * (5 ** 2)
    end
  end
end
