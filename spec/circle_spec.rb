require 'spec_helper'
require_relative '../lib/circle'

describe Geometry::Circle do
  describe '#circumference' do
    it 'calculates the circumference of a circle' do
      circle = Geometry::Circle.new(4)
      expect(circle.circumference).to eq 8 * Math::PI
    end
  end

end
