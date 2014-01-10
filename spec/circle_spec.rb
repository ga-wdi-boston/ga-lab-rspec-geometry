require 'spec_helper'
require_relative '../lib/circle'

describe Geometry::Circle do
  describe '#circumference' do
    it 'two times the radius times Pi' do
      circle = Geometry::Circle.new(6)
      expect(circle.circumference).to eq 37.68
    end
  end

  describe '#area' do
    it 'squares the radius and multiplies it by Pi' do
      circle = Geometry::Circle.new(6)
      expect(circle.area).to eq 113.04
    end
  end
end