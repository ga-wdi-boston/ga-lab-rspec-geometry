require 'spec_helper'
require_relative '../lib/circle'

describe Geometry::Circle do
  describe '#circumference' do
    it 'returns the circumference of a circle' do
      circle = Geometry::Circle.new(2)
      expect(circle.circumference).to eq 12.5664
    end

    it 'returns the circumference of a circle' do
      circle = Geometry::Circle.new(5)
      expect(circle.circumference).to eq 31.4159
    end
  end

  describe '#area' do
    it 'returns the area of a circle' do
      circle = Geometry::Circle.new(5)
      expect(circle.area).to eq 78.5398
    end

    it 'returns the area of a circle' do
      circle = Geometry::Circle.new(2)
      expect(circle.area).to eq 12.5664
    end
  end

end
