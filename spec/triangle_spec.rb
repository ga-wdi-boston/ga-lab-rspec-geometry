require 'spec_helper'
require_relative '../lib/triangle'

describe Geometry::Triangle do
  describe '#perimeter' do
    it 'returns the perimeter of the triangle' do
      first_triangle = Geometry::Triangle.new(1, 1, 1)
      second_triangle = Geometry::Triangle.new(2, 4, 5)

      expect(first_triangle.perimeter).to eq 3
      expect(second_triangle.perimeter).to eq 11
    end
  end
end
